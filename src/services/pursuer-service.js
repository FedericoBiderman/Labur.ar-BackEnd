// services/userService.js
const userRepository = require('../repositories/userRepository');

const findCompatibleUsers = async (categoryId) => {
  if (!categoryId || isNaN(categoryId)) {
    throw new Error('Invalid category ID');
  }
  return await userRepository.getUsersByCategory(categoryId);
};

module.exports = {
  findCompatibleUsers,
};
