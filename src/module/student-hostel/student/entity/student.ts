import { Column, Entity } from 'typeorm';
import { BaseEntity } from '../../../../common/base-entity';

@Entity('sh_student')
export class StudentEntity extends BaseEntity {
  @Column({ comment: '姓名' })
  fullName: string;
  @Column({
    comment: '性别',
  })
  sex: number;
  @Column({ comment: '学号' })
  code: string;
  @Column({ comment: '专业' })
  majorId: string;
  @Column({ comment: '班级' })
  classNum: string;
  @Column({ comment: '手机号' })
  phoneNumber: string;
  @Column({ comment: '入学时间' })
  enrolDate: Date;
  @Column({ comment: '宿舍id' })
  hostelId: string;
  @Column({ comment: '床位' })
  bedNum: string;
  @Column({ comment: '邮箱' })
  email: string;
}
