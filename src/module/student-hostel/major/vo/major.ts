import { ApiProperty } from '@midwayjs/swagger';
import { BaseVO } from '../../../../common/base-vo';

export class MajorVO extends BaseVO {
  @ApiProperty({ description: '专业名称' })
  name: string;
  @ApiProperty({ description: '班级数量' })
  classCount: number;
}
