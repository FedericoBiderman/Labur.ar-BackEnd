import PursuerMRepository from '../repositories/pursuerM-repository.js';

export default class UserService {
  
  // Método para encontrar usuarios compatibles por categoría
  findCompatibleUsersAsync = async (categoryId) => {
    if (!categoryId || isNaN(categoryId)) {
      throw new Error('Invalid category ID');
    }
    
    const repo = new PursuerMRepository();
    const users = await repo.getUsersByCategoryAsync(categoryId);
    return users;
  }
}
