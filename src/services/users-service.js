import UserRepository from './../repositories/users-repository.js';

export default class ProvinceService {
  getByUsernamePasswordAsync = async (username, password) => {
    const repo = new UserRepository();
    const returnArray = await repo.getByUsernamePasswordAsync(username, password);
    return returnArray;
  }
  
  createUser = async (entity) => {   
    const repo = new UserRepository();
    const rowsAffected = await repo.createUserAsync(entity);
    return rowsAffected;
  }
}