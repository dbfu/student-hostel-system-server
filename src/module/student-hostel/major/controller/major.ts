import {
  Body,
  Controller,
  Del,
  Get,
  Inject,
  Param,
  Post,
  Put,
  Query,
} from '@midwayjs/core';
import { ApiOkResponse } from '@midwayjs/swagger';
import { AssertUtils } from '../../../../utils/assert';
import { FilterQuery } from '../../../../utils/filter-query';
import { like } from '../../../../utils/typeorm-utils';
import { MajorDTO } from '../dto/major';
import { MajorPageDTO } from '../dto/major-page';
import { MajorEntity } from '../entity/major';
import { MajorService } from '../service/major';
import { MajorVO } from '../vo/major';
import { MajorPageVO } from '../vo/major-page';

@Controller('/major', { description: '专业管理' })
export class MajorController {
  @Inject()
  majorService: MajorService;

  @Get('/page', { description: '分页查询' })
  @ApiOkResponse({
    type: MajorPageVO,
  })
  async page(@Query() majorPageDTO: MajorPageDTO) {
    const filterQuery = new FilterQuery<MajorEntity>();
    const { name } = majorPageDTO;

    filterQuery.append('name', like(name), !!name);

    return await this.majorService.page(majorPageDTO, {
      where: filterQuery.where,
      order: { createDate: 'DESC' },
    });
  }

  @Post('/', { description: '创建专业' })
  async create(@Body() data: MajorDTO) {
    return await this.majorService.create(data.toEntity());
  }

  @Put('/', { description: '编辑专业' })
  async edit(@Body() data: MajorDTO) {
    AssertUtils.notEmpty(data.id, 'id不能为空');
    return await this.majorService.edit(data.toEntity());
  }

  @Del('/:id', { description: '删除专业' })
  async remove(@Param('id') id: string) {
    AssertUtils.notEmpty(id, 'id不能为空');
    return await this.majorService.removeById(id);
  }

  @Get('/list', { description: '专业列表' })
  @ApiOkResponse({
    type: MajorVO,
    isArray: true,
  })
  async list(@Query() majorPageDTO?: MajorPageDTO) {
    const filterQuery = new FilterQuery<MajorEntity>();
    const { name } = majorPageDTO || {};

    filterQuery.append('name', like(name), !!name);

    return await this.majorService.list({
      where: filterQuery.where,
      order: { createDate: 'DESC' },
    });
  }
}
