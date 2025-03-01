import { Provide } from '@midwayjs/core';
import { InjectEntityModel } from '@midwayjs/typeorm';
import { Repository } from 'typeorm';
import { HostelEntity } from '../../hostel/entity/hostel';
import { MajorEntity } from '../../major/entity/major';
import { RepairEntity } from '../../repair/entity/repair';
import { StudentEntity } from '../../student/entity/student';

@Provide()
export class DashboardService {
  @InjectEntityModel(StudentEntity)
  studentModel: Repository<StudentEntity>;
  @InjectEntityModel(MajorEntity)
  majorModel: Repository<MajorEntity>;
  @InjectEntityModel(RepairEntity)
  repairModel: Repository<RepairEntity>;
  @InjectEntityModel(HostelEntity)
  hostelModel: Repository<HostelEntity>;
  async getDashboardData() {
    const classCount = await this.majorModel
      .createQueryBuilder('t')
      .select('SUM(t.classCount) AS classCount')
      .getRawOne();

    const toRepairCount = await this.repairModel.count({
      where: {
        status: 0,
      },
    });

    const bedCount = await this.hostelModel
      .createQueryBuilder('t')
      .select('SUM(t.bedCount) as bedCount')
      .getRawOne();

    const studentCountByBuilding = await this.studentModel
      .createQueryBuilder('t')
      .leftJoinAndSelect(HostelEntity, 'h', 't.hostelId = h.id')
      .select('h.building as building, COUNT(t.id) as count')
      .groupBy('h.building')
      .orderBy('h.building', 'ASC')
      .getRawMany();

    studentCountByBuilding.forEach(item => {
      item.count = Number(item.count);
      item.building = `${item.building}栋`;
    });

    return {
      studentCount: await this.studentModel.count(),
      classCount: classCount.classCount,
      toRepairCount,
      bedCount: bedCount.bedCount,
      studentCountByBuilding,
    };
  }
}
