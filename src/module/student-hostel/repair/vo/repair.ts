import { ApiProperty } from '@midwayjs/swagger';
import { BaseVO } from '../../../../common/base-vo';
import { HostelVO } from '../../hostel/vo/hostel';
import { StudentVO } from '../../student/vo/student';

export class RepairVO extends BaseVO {
  @ApiProperty({ description: '宿舍id' })
  hostelId?: string;
  @ApiProperty({ description: '报修人id' })
  repairId?: string;
  @ApiProperty({ description: '报修内容' })
  repairRemark?: string;
  @ApiProperty({ description: '状态，0 未处理，1 已处理' })
  status?: number;

  @ApiProperty({ description: '报修人', type: StudentVO })
  repair?: StudentVO;

  @ApiProperty({ description: '宿舍', type: HostelVO })
  hostel?: HostelVO;
}
