import CategoriesXnameRepository from '../repositories/CategoriesXname-repository.js';

export default class CategoriesXnameService {
  getCategoryByNameAsync = async (name) => {
    const repo = new CategoriesXnameRepository();
    const category = await repo.getCategoryByNameAsync(name);
    return category;
  };
}
