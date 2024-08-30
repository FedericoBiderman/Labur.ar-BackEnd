import EducationalStatusRepository from '../repositories/EducationalStatus-repository.js';

export default class EducationalStatusService {
  // Clase con lógica de negocio.
  getAllAsync = async () => {
    const repo = new EducationalStatusRepository();
    const returnArray = await repo.getAllAsync();
    return returnArray;
  }
  
  getByIdAsync = async (id) => {
    const repo = new EducationalStatusRepository();
    const returnEntity = await repo.getByIdAsync(id);
    return returnEntity;
  }
}
