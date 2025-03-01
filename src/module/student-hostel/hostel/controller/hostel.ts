import {
  Body,
  Controller,
  Del,
  Get,
  Inject,
  Param,
  Post,
  Provide,
  Put,
  Query,
} from '@midwayjs/decorator';
import { ApiOkResponse } from '@midwayjs/swagger';
import { AssertUtils } from '../../../../utils/assert';
import { FilterQuery } from '../../../../utils/filter-query';
import { like } from '../../../../utils/typeorm-utils';
import { HostelDTO } from '../dto/hostel';
import { HostelPageDTO } from '../dto/hostel-page';
import { HostelEntity } from '../entity/hostel';
import { HostelService } from '../service/hostel';
import { HostelVO } from '../vo/hostel';
import { HostelPageVO } from '../vo/hostel-page';

@Provide()
@Controller('/hostel', { description: '宿舍管理' })
export class HostelController {
  @Inject()
  hostelService: HostelService;

  @Get('/page', { description: '分页查询' })
  @ApiOkResponse({
    type: HostelPageVO,
  })
  async page(@Query() hostelPageDTO: HostelPageDTO) {
    const filterQuery = new FilterQuery<HostelEntity>();

    filterQuery
      .append('number', like(hostelPageDTO.number), !!hostelPageDTO.number)
      .append('building', hostelPageDTO.building, !!hostelPageDTO.building)
      .append('floor', hostelPageDTO.floor, !!hostelPageDTO.floor);

    return await this.hostelService.page(hostelPageDTO, {
      where: filterQuery.where,
      order: { createDate: 'DESC' },
    });
  }

  @Post('/', { description: '新建' })
  async create(@Body() data: HostelDTO) {
    return await this.hostelService.create(data.toEntity());
  }

  @Put('/', { description: '编辑' })
  async edit(@Body() data: HostelDTO) {
    AssertUtils.notEmpty(data.id, 'id不能为空');
    return await this.hostelService.edit(data.toEntity());
  }

  @Del('/:id', { description: '删除' })
  async remove(@Param('id') id: string) {
    AssertUtils.notEmpty(id, 'id不能为空');
    await this.hostelService.removeById(id);
  }

  @Get('/:id', { description: '根据id查询' })
  async getById(@Param('id') id: string) {
    return await this.hostelService.getById(id);
  }

  @Get('/list', { description: '宿舍列表' })
  @ApiOkResponse({
    type: HostelVO,
    isArray: true,
  })
  async list(@Query() hostelPageDTO?: HostelPageDTO) {
    const filterQuery = new FilterQuery<HostelEntity>();
    const { number } = hostelPageDTO || {};

    filterQuery.append('number', number, !!number);

    return await this.hostelService.list({
      where: filterQuery.where,
      order: { createDate: 'DESC' },
    });
  }
}
