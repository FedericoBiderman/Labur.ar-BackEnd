import EducationalInstitutionsRepository from '../repositories/EducationalInstitutions-repository.js';

export default class EducationalInstitutionsService {
  // Clase con lógica de negocio.
  getAllAsync = async () => {
    const repo = new EducationalInstitutionsRepository();
    const returnArray = await repo.getAllAsync();
    return returnArray;
  }
  
  getByIdAsync = async (id) => {
    const repo = new EducationalInstitutionsRepository();
    const returnEntity = await repo.getByIdAsync(id);
    return returnEntity;
  }
}
