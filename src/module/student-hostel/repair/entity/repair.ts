import { Column, Entity } from 'typeorm';
import { BaseEntity } from '../../../../common/base-entity';

@Entity('sh_repair')
export class RepairEntity extends BaseEntity {
  @Column({ comment: '宿舍id' })
  hostelId?: string;
  @Column({ comment: '报修人id' })
  repairId?: string;
  @Column({ comment: '报修内容', type: 'longtext' })
  repairRemark?: string;
  @Column({ comment: '状态，0 未处理，1 已处理' })
  status?: number;
}
