import { Controller, Get, Inject } from '@midwayjs/core';
import { ApiOkResponse } from '@midwayjs/swagger';
import { DashboardService } from '../service/dashboard';
import { DashboardDataVO } from '../vo/dashboard';

@Controller('/dashboard', { description: '首页' })
export class DashboardController {
  @Inject()
  dashboardService: DashboardService;

  @Get('/')
  @ApiOkResponse({
    type: DashboardDataVO,
  })
  async getDashboardData() {
    return this.dashboardService.getDashboardData();
  }
}
