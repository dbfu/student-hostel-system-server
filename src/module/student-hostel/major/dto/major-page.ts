import { ApiProperty } from '@midwayjs/swagger';
import { PageDTO } from '../../../../common/page-dto';

export class MajorPageDTO extends PageDTO {
  @ApiProperty({ description: '专业名称' })
  name: string;
}
