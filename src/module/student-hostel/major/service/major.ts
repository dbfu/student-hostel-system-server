import { Provide } from '@midwayjs/core';
import { InjectEntityModel } from '@midwayjs/typeorm';
import { Repository } from 'typeorm';
import { BaseService } from '../../../../common/base-service';
import { MajorEntity } from '../entity/major';

@Provide()
export class MajorService extends BaseService<MajorEntity> {
  @InjectEntityModel(MajorEntity)
  majorModel: Repository<MajorEntity>;
  getModel(): Repository<MajorEntity> {
    return this.majorModel;
  }
}
