import { ApiProperty } from '@midwayjs/swagger';

class StudentCountByBuilding {
  @ApiProperty({ description: '楼栋' })
  building: string;

  @ApiProperty({ description: '学生数量' })
  count: number;
}

export class DashboardDataVO {
  @ApiProperty({ description: '学生数量' })
  studentCount: number;
  @ApiProperty({ description: '班级数量' })
  classCount: number;
  @ApiProperty({ description: '待维修数量' })
  toRepairCount: number;
  @ApiProperty({ description: '床位数量' })
  bedCount: number;
  @ApiProperty({
    description: '每个楼栋的学生数量',
    type: StudentCountByBuilding,
    isArray: true,
  })
  studentCountByBuilding: StudentCountByBuilding[];
}
