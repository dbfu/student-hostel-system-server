import { ApiProperty } from '@midwayjs/swagger';
import { PageDTO } from '../../../../common/page-dto';

export class RepairPageDTO extends PageDTO {
  @ApiProperty({ description: '宿舍号' })
  hostelNumber: string;

  @ApiProperty({ description: '报修人姓名' })
  repairName: string;

  @ApiProperty({ description: '报修状态' })
  status: number;
}
