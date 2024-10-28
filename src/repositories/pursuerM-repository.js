// repositories/userRepository.js
const pool = require('../config/db');

const getUsersByCategory = async (categoryId) => {
  const query = `
    SELECT u.*
    FROM public."Users" u
    JOIN public."UserCategories" uc ON u."Id" = uc."IdUser"
    WHERE uc."IdCategory" = $1
  `;
  const result = await pool.query(query, [categoryId]);
  return result.rows;
};

module.exports = {
  getUsersByCategory,
};
