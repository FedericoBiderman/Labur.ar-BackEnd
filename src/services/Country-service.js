import CountryRepository from '../repositories/Country-repository.js';

export default class CountryService {
  // Clase con lógica de negocio.
  getAllAsync = async () => {
    const repo = new CountryRepository();
    const returnArray = await repo.getAllAsync();
    return returnArray;
  }
  
  getByIdAsync = async (id) => {
    const repo = new CountryRepository();
    const returnEntity = await repo.getByIdAsync(id);
    return returnEntity;
  }
}
