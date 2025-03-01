import { ApiProperty } from '@midwayjs/swagger';
import { Rule } from '@midwayjs/validate';
import { BaseDTO } from '../../../../common/base-dto';
import { R } from '../../../../common/base-error-util';
import { requiredString } from '../../../../common/common-validate-rules';
import { RepairEntity } from '../entity/repair';

export class RepairDTO extends BaseDTO<RepairEntity> {
  @ApiProperty({ description: '宿舍id' })
  @Rule(requiredString.error(R.error('hostelId不能为空')))
  hostelId?: string;

  @ApiProperty({ description: '报修人id' })
  @Rule(requiredString.error(R.error('报修人id不能为空')))
  repairId?: string;

  @ApiProperty({ description: '报修内容' })
  @Rule(requiredString.error(R.error('报修内容不能为空')))
  repairRemark?: string;

  @ApiProperty({ description: '状态，0 未处理，1 已处理' })
  status?: number;
}
