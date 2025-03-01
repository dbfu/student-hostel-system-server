import { ApiProperty } from '@midwayjs/swagger';
import { PageDTO } from '../../../../common/page-dto';

export class HostelPageDTO extends PageDTO {
  @ApiProperty({ description: '门牌号' })
  number?: string;

  @ApiProperty({ description: '栋号' })
  building?: string;

  @ApiProperty({ description: '楼层' })
  floor?: string;
}
