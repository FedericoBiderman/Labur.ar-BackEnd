  import GendersRepository from '../repositories/Genders-repository.js';

  export default class GendersService {
    // Clase con lógica de negocio.
    getAllAsync = async () => {
      const repo = new GendersRepository();
      const returnArray = await repo.getAllAsync();
      return returnArray;
    }
    
    getByIdAsync = async (id) => {
      const repo = new GendersRepository();
      const returnEntity = await repo.getByIdAsync(id);
      return returnEntity;
    }
  }
