import DBConfig from '../configs/db-config.js';
import pkg from 'pg'
const {Client, Pool} = pkg;

export default class CountryRepository{
    getAllAsync = async() => {
        console.log(`Document_TypesRepository.createAsync()`);
        let returnArray = null;
        const client = new Client(DBConfig);
        try{
            await client.connect();
            const sql = `SELECT * FROM public."Document_Types"`;
            const result = await client.query(sql);
            await client.end();
            returnArray = result.rows;
        } catch (error) {
            console.log(error);
        }
        return returnArray;
    }


    getByIdAsync = async (id) => {
        console.log(`Document_TypesRepository.getByIdAsync(${id})`);
        let returnEntity = null;
        const client = new Client(DBConfig);
        try{
            await client.connect();
            const sql = `SELECT * FROM public."Document_Types" WHERE "Id"=$1`;
            const values = [id];
            const result = await client.query(sql, values);
            await client.end();
            if(result.rows.length > 0){
                returnEntity = result.rows[0];
            }
        } catch (error) {
            console.log(error);
        }
        console.log("returnEntity", returnEntity)
        return returnEntity;
    }

}
