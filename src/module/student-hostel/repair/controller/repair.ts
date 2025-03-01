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
import { RepairDTO } from '../dto/repair';
import { RepairPageDTO } from '../dto/repair-page';
import { RepairService } from '../service/repair';
import { RepairVO } from '../vo/repair';
import { RepairPageVO } from '../vo/repair-page';

@Provide()
@Controller('/repair', { description: '报修管理' })
export class RepairController {
  @Inject()
  repairService: RepairService;

  @Get('/page', { description: '分页查询' })
  @ApiOkResponse({
    type: RepairPageVO,
  })
  async page(@Query() repairPageDTO: RepairPageDTO) {
    return await this.repairService.pageRepair(repairPageDTO);
  }

  @Get('/page/current', { description: '分页查询当前用户报修单' })
  @ApiOkResponse({
    type: RepairPageVO,
  })
  async pageCurrent(@Query() repairPageDTO: RepairPageDTO) {
    return await this.repairService.pageRepairCurrent(repairPageDTO);
  }

  @Post('/', { description: '新建' })
  async create(@Body() data: RepairDTO) {
    data.status = 0;
    return await this.repairService.createRepair(data.toEntity());
  }

  @Put('/', { description: '编辑' })
  async edit(@Body() data: RepairDTO) {
    AssertUtils.notEmpty(data.id, 'id不能为空');
    return await this.repairService.edit(data.toEntity());
  }

  @Del('/:id', { description: '删除' })
  async remove(@Param('id') id: string) {
    AssertUtils.notEmpty(id, 'id不能为空');
    await this.repairService.removeById(id);
  }

  @Get('/:id', { description: '根据id查询' })
  async getById(@Param('id') id: string) {
    return await this.repairService.getById(id);
  }

  @Get('/list', { description: '专业列表' })
  @ApiOkResponse({
    type: RepairVO,
    isArray: true,
  })
  async list() {
    return await this.repairService.list();
  }
}
