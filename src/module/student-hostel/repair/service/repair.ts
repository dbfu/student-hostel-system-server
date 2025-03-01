import { Provide } from '@midwayjs/decorator';
import { InjectEntityModel } from '@midwayjs/typeorm';
import { Repository } from 'typeorm';
import { BaseService } from '../../../../common/base-service';
import { UserEntity } from '../../../system/user/entity/user';
import { HostelEntity } from '../../hostel/entity/hostel';
import { StudentEntity } from '../../student/entity/student';
import { RepairPageDTO } from '../dto/repair-page';
import { RepairEntity } from '../entity/repair';

@Provide()
export class RepairService extends BaseService<RepairEntity> {
  @InjectEntityModel(RepairEntity)
  repairModel: Repository<RepairEntity>;
  @InjectEntityModel(UserEntity)
  userModel: Repository<UserEntity>;
  @InjectEntityModel(StudentEntity)
  studentModel: Repository<StudentEntity>;

  getModel(): Repository<RepairEntity> {
    return this.repairModel;
  }

  async createRepair(entity: RepairEntity): Promise<RepairEntity> {
    const user = await this.userModel.findOneBy({ id: entity.repairId });
    const student = await this.studentModel.findOneBy({
      phoneNumber: user.phoneNumber,
    });

    entity.repairId = student.id;

    return await this.create(entity);
  }

  async pageRepair(
    repairPageDTO: RepairPageDTO
  ): Promise<{ data: any[]; total: number }> {
    const qb = await this.repairModel
      .createQueryBuilder('t')
      .leftJoinAndMapOne('t.repair', StudentEntity, 's', 't.repairId = s.id')
      .leftJoinAndMapOne('t.hostel', HostelEntity, 'h', 't.hostelId = h.id')
      .skip(repairPageDTO.page * repairPageDTO.size)
      .take(repairPageDTO.size)
      .where('1=1')
      .orderBy('t.createDate', 'DESC');

    if (repairPageDTO.hostelNumber) {
      qb.where('h.number like :hostelNumber', {
        hostelNumber: `%${repairPageDTO.hostelNumber}%`,
      });
    }

    if (repairPageDTO.repairName) {
      qb.andWhere('t.repairName like :repairName', {
        repairName: `%${repairPageDTO.repairName}%`,
      });
    }

    if (repairPageDTO.status !== undefined && repairPageDTO.status !== null) {
      qb.andWhere('t.status = :status', {
        status: repairPageDTO.status,
      });
    }

    const [data, total] = await qb.getManyAndCount();

    return {
      data,
      total,
    };
  }

  async pageRepairCurrent(
    repairPageDTO: RepairPageDTO
  ): Promise<{ data: any[]; total: number }> {
    // 根据当前用户 id 查询用户信息
    const user = await this.userModel.findOneBy({
      id: this.ctx.userInfo.userId,
    });

    // 通过用户手机号关联学生信息
    const student = await this.studentModel.findOneBy({
      phoneNumber: user.phoneNumber,
    });

    if (!student) {
      return {
        data: [],
        total: 0,
      };
    }

    const qb = this.repairModel
      .createQueryBuilder('t')
      .leftJoinAndMapOne('t.repair', StudentEntity, 's', 't.repairId = s.id')
      .leftJoinAndMapOne('t.hostel', HostelEntity, 'h', 't.hostelId = h.id')
      .skip(repairPageDTO.page * repairPageDTO.size)
      .take(repairPageDTO.size)
      .where('t.repairId = :repairId', { repairId: student.id })
      .orderBy('t.createDate', 'DESC');

    if (repairPageDTO.status !== undefined && repairPageDTO.status !== null) {
      qb.andWhere('t.status = :status', {
        status: repairPageDTO.status,
      });
    }

    const [data, total] = await qb.getManyAndCount();

    return {
      data,
      total,
    };
  }
}
