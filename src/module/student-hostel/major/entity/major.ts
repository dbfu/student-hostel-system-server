import { Column, Entity } from 'typeorm';
import { BaseEntity } from '../../../../common/base-entity';

@Entity('sh_major')
export class MajorEntity extends BaseEntity {
  @Column({ comment: '专业名称' })
  name: string;
  @Column({ comment: '班级数量' })
  classCount: number;
}
