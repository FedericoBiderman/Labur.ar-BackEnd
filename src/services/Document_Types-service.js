import Document_TypesRepository from '../repositories/Document_Types-repository.js';

export default class Document_TypesService {
  // Clase con lógica de negocio.
  getAllAsync = async () => {
    const repo = new Document_TypesRepository();
    const returnArray = await repo.getAllAsync();
    return returnArray;
  }
  
  getByIdAsync = async (id) => {
    const repo = new Document_TypesRepository();
    const returnEntity = await repo.getByIdAsync(id);
    return returnEntity;
  }
}
