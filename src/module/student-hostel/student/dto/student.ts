import { ApiProperty } from '@midwayjs/swagger';
import { Rule, RuleType } from '@midwayjs/validate';
import { BaseDTO } from '../../../../common/base-dto';
import { R } from '../../../../common/base-error-util';
import {
  requiredNumber,
  requiredString,
} from '../../../../common/common-validate-rules';
import { StudentEntity } from '../entity/student';

export class StudentDTO extends BaseDTO<StudentEntity> {
  @ApiProperty({ description: '姓名' })
  @Rule(requiredString.error(R.validateError('姓名不能为空')))
  fullName: string;

  @ApiProperty({
    description: '性别',
  })
  @Rule(requiredNumber.error(R.validateError('性别不能为空')))
  sex: number;

  @ApiProperty({ description: '专业' })
  @Rule(requiredString.error(R.validateError('专业不能为空')))
  majorId: string;

  @ApiProperty({ description: '班级' })
  @Rule(requiredString.error(R.validateError('班级不能为空')))
  classNum: string;

  @ApiProperty({ description: '手机号' })
  @Rule(requiredNumber.error(R.validateError('手机号不能为空')))
  phoneNumber: string;

  @ApiProperty({ description: '入学时间' })
  @Rule(RuleType.date().required().error(R.validateError('入学时间不能为空')))
  enrolDate: Date;

  @ApiProperty({ description: '宿舍id' })
  @Rule(requiredString.error(R.validateError('宿舍不能为空')))
  hostelId: string;

  @ApiProperty({ description: '床位' })
  @Rule(requiredString.error(R.validateError('床位不能为空')))
  bedNum: number;

  @ApiProperty({ description: '邮箱' })
  @Rule(requiredString.error(R.validateError('邮箱不能为空')))
  email: number;

  @ApiProperty({ description: '学号' })
  @Rule(requiredString.error(R.validateError('学号不能为空')))
  code: string;
}
