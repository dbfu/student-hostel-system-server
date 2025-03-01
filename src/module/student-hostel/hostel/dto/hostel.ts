import { ApiProperty } from '@midwayjs/swagger';
import { Rule } from '@midwayjs/validate';
import { BaseDTO } from '../../../../common/base-dto';
import { R } from '../../../../common/base-error-util';
import {
  requiredNumber,
  requiredString,
} from '../../../../common/common-validate-rules';
import { HostelEntity } from '../entity/hostel';

export class HostelDTO extends BaseDTO<HostelEntity> {
  @Rule(requiredString.error(R.validateError('门牌号不能为空')))
  @ApiProperty({ description: '门牌号' })
  number?: string;

  @Rule(requiredString.error(R.validateError('栋号不能为空')))
  @ApiProperty({ description: '栋号' })
  building?: string;

  @Rule(requiredNumber.error(R.validateError('楼层不能为空')))
  @ApiProperty({ description: '楼层' })
  floor?: string;

  @Rule(requiredNumber.error(R.validateError('床位数量不能为空')))
  @ApiProperty({ description: '床位数量' })
  bedCount?: number;
}
