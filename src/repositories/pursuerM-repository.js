import DBConfig from './../configs/db-config.js';
import pkg from 'pg';


const { Client } = pkg;

export default class PursuerRepository {
  
  // Método para obtener usuarios por categoría
  getUsersByCategoryAsync = async (categoryId) => {
    console.log(`PursuerRepository.getUsersByCategoryAsync(${categoryId})`);
    let returnArray = null;
    const client = new Client(DBConfig);
    
    try {
      await client.connect();
      const sql = `
        SELECT u.*
        FROM public."Users" u
        JOIN public."UserCategories" uc ON u."Id" = uc."IdUser"
        WHERE uc."IdCategory" = $1
      `;
      const values = [categoryId];
      const result = await client.query(sql, values);
      await client.end();
      returnArray = result.rows;
    } catch (error) {
      console.error("Error executing query:", error);
    }
    
    return returnArray;
  }
}
