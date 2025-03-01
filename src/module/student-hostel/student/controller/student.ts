import {
  Body,
  Controller,
  Del,
  Files,
  Get,
  Inject,
  Param,
  Post,
  Put,
  Query,
  SetHeader,
} from '@midwayjs/decorator';
import { ApiOkResponse } from '@midwayjs/swagger';
import { Context } from 'koa';
import * as XLSX from 'xlsx';
import { AssertUtils } from '../../../../utils/assert';
import { FilterQuery } from '../../../../utils/filter-query';
import { like } from '../../../../utils/typeorm-utils';
import { StudentDTO } from '../dto/student';
import { StudentPageDTO } from '../dto/student-page';
import { StudentEntity } from '../entity/student';
import { StudentService } from '../service/student';
import { StudentPageVO } from '../vo/student-page';

@Controller('/student', { description: '学生管理' })
export class StudentController {
  @Inject()
  studentService: StudentService;
  @Inject()
  ctx: Context;

  @Get('/page', { description: '分页查询' })
  @ApiOkResponse({
    type: StudentPageVO,
  })
  async page(@Query() studentPageDTO: StudentPageDTO) {
    const filterQuery = new FilterQuery<StudentEntity>();
    filterQuery.append(
      'fullName',
      like(studentPageDTO.fullName),
      !!studentPageDTO.fullName
    );

    filterQuery.append(
      'code',
      like(studentPageDTO.code),
      !!studentPageDTO.code
    );

    return await this.studentService.page(studentPageDTO, {
      where: filterQuery.where,
      order: { createDate: 'DESC' },
    });
  }

  @Post('/', { description: '新建' })
  async create(@Body() data: StudentDTO) {
    return await this.studentService.create(data.toEntity());
  }

  @Put('/', { description: '编辑' })
  async edit(@Body() data: StudentDTO) {
    AssertUtils.notEmpty(data.id, 'id不能为空');
    return await this.studentService.edit(data.toEntity());
  }

  @Del('/:id', { description: '删除' })
  async remove(@Param('id') id: string) {
    AssertUtils.notEmpty(id, 'id不能为空');
    await this.studentService.removeById(id);
  }

  @Get('/:id', { description: '根据id查询' })
  async getById(@Param('id') id: string) {
    return await this.studentService.getById(id);
  }

  @Get('/list', { description: '查询全部' })
  async list() {
    return await this.studentService.list();
  }

  @Post('/import', { description: '导入' })
  async import(@Files() files) {
    AssertUtils.arrNotEmpty(files, '请上传文件');
    const [file] = files;

    return this.studentService.import(file.data);
  }

  @Post('/export/template', { description: '下载模板' })
  @SetHeader({
    'Content-Type':
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    'Content-Disposition': 'attachment; filename=student.xlsx',
  })
  async downloadTemplate() {
    const colums = [
      [
        '姓名',
        '性别',
        '学号',
        '专业',
        '班级',
        '手机号',
        '入学时间',
        '宿舍',
        '床位',
        '邮箱',
      ],
    ];

    const workbook = XLSX.utils.book_new();
    const worksheet = XLSX.utils.aoa_to_sheet(colums);
    XLSX.utils.book_append_sheet(workbook, worksheet, '学生信息模板');
    const buffer = XLSX.write(workbook, { bookType: 'xlsx', type: 'buffer' });

    return buffer;
  }
}
