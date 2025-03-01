import { Provide } from '@midwayjs/decorator';
import { InjectEntityModel } from '@midwayjs/typeorm';
import { Repository } from 'typeorm';
import { BaseService } from '../../../../common/base-service';
import { HostelEntity } from '../entity/hostel';

@Provide()
export class HostelService extends BaseService<HostelEntity> {
  @InjectEntityModel(HostelEntity)
  hostelModel: Repository<HostelEntity>;

  getModel(): Repository<HostelEntity> {
    return this.hostelModel;
  }
}
