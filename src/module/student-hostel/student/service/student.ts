import { NodeRedisWatcher } from '@midwayjs/casbin-redis-adapter';
import { CasbinRule } from '@midwayjs/casbin-typeorm-adapter';
import { Inject, Provide } from '@midwayjs/decorator';
import { InjectEntityModel } from '@midwayjs/typeorm';
import * as bcrypt from 'bcryptjs';
import { FindManyOptions, Repository } from 'typeorm';
import * as XLSX from 'xlsx';
import { BaseService } from '../../../../common/base-service';
import { PageDTO } from '../../../../common/page-dto';
import { AssertUtils } from '../../../../utils/assert';
import { RoleEntity } from '../../../system/role/entity/role';
import { UserDTO } from '../../../system/user/dto/user';
import { UserEntity } from '../../../system/user/entity/user';
import { UserRoleEntity } from '../../../system/user/entity/user-role';
import { UserService } from '../../../system/user/service/user';
import { HostelEntity } from '../../hostel/entity/hostel';
import { MajorEntity } from '../../major/entity/major';
import { StudentEntity } from '../entity/student';

@Provide()
export class StudentService extends BaseService<StudentEntity> {
  @InjectEntityModel(StudentEntity)
  studentModel: Repository<StudentEntity>;
  @Inject()
  userService: UserService;
  @Inject()
  casbinWatcher: NodeRedisWatcher;

  getModel(): Repository<StudentEntity> {
    return this.studentModel;
  }

  async page(
    pageDTO: PageDTO,
    options?: FindManyOptions<StudentEntity>
  ): Promise<{ data: any[]; total: number }> {
    const [data, total] = await this.studentModel
      .createQueryBuilder('student')
      .leftJoinAndMapOne(
        'student.major',
        MajorEntity,
        'major',
        'student.majorId = major.id'
      )
      .leftJoinAndMapOne(
        'student.hostel',
        HostelEntity,
        'hostel',
        'student.hostelId = hostel.id'
      )
      .where(options?.where)
      .orderBy('student.createDate', 'DESC')
      .skip(pageDTO.page * pageDTO.size)
      .take(pageDTO.size)
      .getManyAndCount();
    return {
      data,
      total,
    };
  }

  async removeById(id: string) {
    await this.defaultDataSource.transaction(async manager => {
      const student = await manager.findOneBy(StudentEntity, {
        id,
      });

      await manager
        .createQueryBuilder()
        .delete()
        .from(StudentEntity)
        .where({ id })
        .execute();

      await manager
        .createQueryBuilder()
        .delete()
        .from(UserEntity)
        .where({ phoneNumber: student.phoneNumber })
        .execute();
    });
  }

  async create(entity: StudentEntity) {
    const count = await this.studentModel.count({
      where: {
        hostelId: entity.hostelId,
        bedNum: entity.bedNum,
      },
    });

    AssertUtils.isTrue(count === 0, '该宿舍当前床位已被分配');

    const userDTO = new UserDTO();

    userDTO.nickName = entity.fullName;
    userDTO.phoneNumber = entity.phoneNumber;
    userDTO.userName = entity.code;
    userDTO.email = entity.email;

    return await this.defaultDataSource.transaction(async manager => {
      await manager.save(StudentEntity, entity);

      const studentRole = await manager.findOneBy(RoleEntity, {
        code: 'student',
      });

      if (studentRole) {
        userDTO.roleIds = [studentRole.id];
        await this.userService.createUser(userDTO);
      }

      return entity;
    });
  }

  async import(filePath: string) {
    const workbook = XLSX.readFile(filePath);
    // 获取第一个工作表的名称
    const sheetName = workbook.SheetNames[0];
    // 获取工作表对象
    const worksheet = workbook.Sheets[sheetName];
    // 将工作表转换为 JSON 格式
    const jsonData = XLSX.utils.sheet_to_json(worksheet);

    const errorMessages = [];

    const majorList = await this.defaultDataSource
      .getRepository(MajorEntity)
      .find();

    const majorNameMap = majorList.reduce((prev, cur) => {
      prev[cur.name] = cur;
      return prev;
    }, {});

    const hostelList = await this.defaultDataSource
      .getRepository(HostelEntity)
      .find();

    const hostelNameMap = hostelList.reduce((prev, cur) => {
      prev[cur.number] = cur;
      return prev;
    }, {});

    const columns = {
      姓名: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '姓名不能为空',
              },
            ];
          }
        },
      },
      性别: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '性别不能为空',
              },
            ];
          }
        },
        transform: value => {
          return value === '男' ? 1 : 0;
        },
      },
      学号: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '学号不能为空',
              },
            ];
          }
        },
      },
      班级: {
        validate: (value, row, record) => {
          if (!value) {
            return [
              {
                row,
                message: '班级不能为空',
              },
            ];
          }

          if (
            majorNameMap[record['专业']] &&
            +value > majorNameMap[record['专业']].classCount
          ) {
            return [
              {
                row,
                message: `该专业不存在 ${value} 班级`,
              },
            ];
          }
        },
      },
      专业: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '专业不能为空',
              },
            ];
          }

          if (!majorNameMap[value]) {
            return [
              {
                row,
                message: `系统中不存在 ${value} 专业`,
              },
            ];
          }
        },
        transform: value => {
          return majorNameMap[value].id;
        },
      },
      手机号: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '手机号不能为空',
              },
            ];
          }
        },
      },
      入学时间: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '入学时间不能为空',
              },
            ];
          }
        },
        transform: value => {
          return new Date(value);
        },
      },
      床位: {
        validate: (value, row, record) => {
          if (!value) {
            return [
              {
                row,
                message: '床位不能为空',
              },
            ];
          }

          if (
            hostelNameMap[record['宿舍']] &&
            +value > hostelNameMap[record['宿舍']].bedCount
          ) {
            return [
              {
                row,
                message: `该宿舍不存在${value}床位`,
              },
            ];
          }
        },
      },
      宿舍: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '宿舍不能为空',
              },
            ];
          }

          if (!hostelNameMap[value]) {
            return [
              {
                row,
                message: `系统中不存在 ${value} 宿舍`,
              },
            ];
          }
        },
        transform: value => {
          return hostelNameMap[value].id;
        },
      },
      邮箱: {
        validate: (value, row) => {
          if (!value) {
            return [
              {
                row,
                message: '邮箱不能为空',
              },
            ];
          }
        },
      },
    };

    jsonData.forEach((item, index) => {
      Object.keys(columns).forEach(col => {
        const errors = columns[col].validate(item[col], index + 1, item) || [];
        if (errors?.length) {
          errorMessages.push(...errors);
          return;
        }

        if (columns[col].transform) {
          item[col] = columns[col].transform(item[col], item);
        }
      });
    });

    // TODO 数据重复性校验，比如学号、手机号、邮箱

    if (errorMessages.length) {
      return {
        success: false,
        message: errorMessages.map((item, index) => ({
          id: index + 1,
          ...item,
        })),
      };
    }

    const students = [];
    const users = [];

    const studentRole = await this.defaultDataSource
      .getRepository(RoleEntity)
      .findOneBy({
        code: 'student',
      });

    jsonData.forEach(item => {
      const student = new StudentEntity();
      student.fullName = item['姓名'];
      student.sex = item['性别'];
      student.code = item['学号'];
      student.majorId = item['专业'];
      student.classNum = item['班级'];
      student.hostelId = item['宿舍'];
      student.bedNum = item['床位'];
      student.enrolDate = item['入学时间'];
      student.email = item['邮箱'];
      student.phoneNumber = item['手机号'];

      const user = new UserEntity();
      user.userName = item['学号'];
      user.nickName = item['姓名'];
      user.email = item['邮箱'];
      user.phoneNumber = item['手机号'];
      const hashPassword = bcrypt.hashSync('123456', 10);
      user.password = hashPassword;

      users.push(user);
      students.push(student);
    });

    await this.defaultDataSource.transaction(async manager => {
      await manager.save(StudentEntity, students);
      await manager.save(UserEntity, users);

      const userRoles = users.map(u => {
        const userRole = new UserRoleEntity();
        userRole.userId = u.id;
        userRole.roleId = studentRole.id;
        return userRole;
      });

      const casbinRules = users.map(u => {
        const casbinRule = new CasbinRule();
        casbinRule.ptype = 'g';
        casbinRule.v0 = u.id;
        casbinRule.v1 = studentRole.id;
        return casbinRule;
      });

      await manager.save(UserRoleEntity, userRoles);
      await manager.save(CasbinRule, casbinRules);
    });

    // 发消息给其它进程，同步最新的策略
    this.casbinWatcher.publishData();

    return {
      success: true,
    };
  }
}
