import { PageVOWrapper } from '../../../../common/page-result-vo';
import { StudentVO } from './student';

export class StudentPageVO extends PageVOWrapper<StudentVO>(StudentVO) {}
