import pkg from 'pg';
import DBConfig from '../configs/db-config.js';

const { Client } = pkg;

export default class CategoriesXnameRepository {
  getCategoryByNameAsync = async (name) => {
    console.log(`CategoriesXnameRepository.getCategoryByNameAsync(${name})`);
    let category = null;
    const client = new Client(DBConfig);

    try {
      await client.connect();
      const sql = `SELECT * FROM public."Categories" WHERE "Name" = $1`;
      const values = [name];
      const result = await client.query(sql, values);
      await client.end();

      if (result.rows.length > 0) {
        category = result.rows[0];
      }
    } catch (error) {
      console.error(error);
    }

    return category;
  };
}
