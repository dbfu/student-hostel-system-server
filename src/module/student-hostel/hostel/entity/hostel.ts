import { Column, Entity } from 'typeorm';
import { BaseEntity } from '../../../../common/base-entity';

@Entity('sh_hostel')
export class HostelEntity extends BaseEntity {
  @Column({ comment: '门牌号' })
  number?: string;
  @Column({ comment: '栋号' })
  building?: string;
  @Column({ comment: '楼层' })
  floor?: string;
  @Column({ comment: '床位数量' })
  bedCount?: number;
}
