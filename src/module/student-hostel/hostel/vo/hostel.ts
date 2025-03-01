import { ApiProperty } from '@midwayjs/swagger';
import { BaseVO } from '../../../../common/base-vo';

export class HostelVO extends BaseVO {
  @ApiProperty({ description: '门牌号' })
  number?: string;
  @ApiProperty({ description: '栋号' })
  building?: string;
  @ApiProperty({ description: '楼层' })
  floor?: string;
  @ApiProperty({ description: '床位数量' })
  bedCount?: number;
}
