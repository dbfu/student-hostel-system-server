import { ApiProperty } from '@midwayjs/swagger';
import { PageDTO } from '../../../../common/page-dto';

export class StudentPageDTO extends PageDTO {
  @ApiProperty({ description: '姓名' })
  fullName: string;

  @ApiProperty({ description: '学号' })
  code: string;
}
