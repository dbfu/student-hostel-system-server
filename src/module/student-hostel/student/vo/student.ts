import { ApiProperty } from '@midwayjs/swagger';
import { BaseVO } from '../../../../common/base-vo';
import { HostelVO } from '../../hostel/vo/hostel';
import { MajorVO } from '../../major/vo/major';

export class StudentVO extends BaseVO {
  @ApiProperty({ description: '姓名' })
  fullName: string;

  @ApiProperty({
    description: '性别',
  })
  sex: number;

  @ApiProperty({ description: '专业id' })
  majorId: string;

  @ApiProperty({ description: '班级' })
  classNum: string;

  @ApiProperty({ description: '手机号' })
  phoneNumber: string;

  @ApiProperty({ description: '入学时间' })
  enrolDate: Date;

  @ApiProperty({ description: '宿舍id' })
  hostelId: string;

  @ApiProperty({ description: '床位' })
  bedNum: number;

  @ApiProperty({ description: '邮箱' })
  email: string;

  @ApiProperty({ description: '专业' })
  major: MajorVO;

  @ApiProperty({ description: '宿舍' })
  hostel: HostelVO;
}
