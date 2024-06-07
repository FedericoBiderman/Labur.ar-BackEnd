import DBConfig from './../configs/db-config.js';
import pkg from 'pg';
const { Client } = pkg;

export default class UserRepository {
    getAllAsync = async(username, password) => {
        console.log(`UserRepository.getAllAsync(${username, password})`);
        let user = null;
        const client = new Client(DBConfig);
        try{
            await client.connect();
            const sql = `SELECT * FROM users WHERE username = $1 && password = $2 `;
            const values= [username, password];
            const result = await client.query(sql, values);
            await client.end();
            if(result.rows.length >0)
            user = result.rows[0];
        } catch (error) {
            console.log(error);
        }
        return user;
    }

    createUser = async (entity) => {
        console.log(`UserRepository.createUser(${JSON.stringify(entity)})`); 
        let rowsAffected = 0;
        const client = new Client(DBConfig);
        try{
            await client.connect();
            const sql = `Insert INTO users (
                    first_name      ,
                    last_name       ,
                    username        ,
                    password          
                )  VALUES (
                    $1,
                    $2,
                    $3,
                    $4
                )`;
            const values = [    entity?.first_name            ?? '',
                                entity?.last_name       ?? '',
                                entity?.username        ?? '',
                                entity?.password       ?? ''
                           ];
            const result = await client.query(sql, values);
            await client.end();
            rowsAffected = result.rowCount;
        } catch (error) {
            LogHelper.logError(error);
            console.log(error);
        }
        return rowsAffected;
    }
}

