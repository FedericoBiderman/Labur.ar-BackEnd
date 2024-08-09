import FilterRepository from './../repositories/filter-repository.js';
export default class FilterService {
    getByUsernamePasswordAsync = async (username, password) => {
      const repo = new UserRepository();
      const returnArray = await repo.getByUsernamePasswordAsync(username, password);
      return returnArray;
    }
    

FilterMatches = async (entity) => {   
    const repo = new UserRepository();
    const rowsAffected = await repo.createUserAsync(entity);
    return rowsAffected;
  }