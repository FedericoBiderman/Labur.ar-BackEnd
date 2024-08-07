import DBConfig from '../configs/db-config.js';
import pkg from 'pg'
const {Client, Pool} = pkg;

export default class CategoriesRepository{
    getAllAsync = async() => {
        console.log(`CategoriesRepository.createAsync()`);
        let returnArray = null;
        const client = new Client(DBConfig);
        try{
            await client.connect();
            const sql = `SELECT * FROM event_categories`;
            const result = await client.query(sql);
            await client.end();
            returnArray = result.rows;
        } catch (error) {
            console.log(error);
        }
        return returnArray;
    }
}