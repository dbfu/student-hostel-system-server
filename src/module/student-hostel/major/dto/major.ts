import { ApiProperty } from '@midwayjs/swagger';
import { Rule } from '@midwayjs/validate';
import { BaseDTO } from '../../../../common/base-dto';
import { R } from '../../../../common/base-error-util';
import {
  requiredNumber,
  requiredString,
} from '../../../../common/common-validate-rules';
import { MajorEntity } from '../entity/major';

export class MajorDTO extends BaseDTO<MajorEntity> {
  @Rule(requiredString.error(R.validateError('专业名称不能为空')))
  @ApiProperty({ description: '专业名称' })
  name: string;
  @Rule(requiredNumber.error(R.validateError('班级数量不能为空')))
  @ApiProperty({ description: '班级数量' })
  classCount: number;
}
