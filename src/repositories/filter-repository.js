import DBConfig from '../configs/db-config.js';
import pkg from 'pg';
const { Client } = pkg;

export default class MatchesRepository {

    addMatchesAsync = async (filters) => {
        console.log(`MatchesRepository.addMatchesAsync()`);
        const client = new Client(DBConfig);
        const { category, sub_category, location, passion, hobbies } = filters;
        const conditions = [];
        const values = [];
        
        if (category) {
            values.push(`%${category}%`);
            conditions.push(`"Categories".name LIKE $${values.length}`);
        }
        if (sub_category) {
            values.push(`%${sub_category}%`);
            conditions.push(`"Categories".name LIKE $${values.length}`);
        }
        if (location) {
            values.push(location);
            conditions.push(`"Users".country = $${values.length}`);
        }
        if (passion) {
            values.push(`%${passion}%`);
            conditions.push(`"Users".passion LIKE $${values.length}`);
        }
        if (hobbies) {
            values.push(`%${hobbies}%`);
            conditions.push(`"Users".hobbies LIKE $${values.length}`);
        }

        const whereClause = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';
        const query = `
            INSERT INTO public."Pickers_Matches" ("Id_Job", "Id_User", "Match_Type")
            SELECT
                "Picker_Job"."Id" AS JobId,  -- Uso completo del nombre de la tabla
                "Users"."Id" AS UserId,
                1 -- Tipo de match
            FROM
                public."Picker_Job"
            JOIN
                public."Categories" ON "Picker_Job"."Category" = "Categories"."Id"
            LEFT JOIN
                public."Categories" AS "SubCategories" ON "Picker_Job"."Sub_Category" = "SubCategories"."Id"
            JOIN
                public."Corporations" ON "Picker_Job"."IdCorporation" = "Corporations"."Id"
            JOIN
                public."Users" ON "Users"."Country" = "Corporations"."Country"
            ${whereClause}
            AND
            ("Users"."Id", "Picker_Job"."Id") NOT IN (
                SELECT "Id_User", "Id_Job"
                FROM public."Pickers_Matches"
            )
        `;

        try {
            await client.connect();
            await client.query(query, values);
            await client.end();
            console.log("Matches added successfully");
        } catch (error) {
            console.error(error);
            await client.end();
            throw error;
        }
    }

    getMatchesAsync = async (filters, limit, offset) => {
        console.log(`MatchesRepository.getMatchesAsync()`);
        const client = new Client(DBConfig);
        const { category, sub_category, location, passion, hobbies } = filters;
        const conditions = [];
        const values = [];
        
        if (category) {
            values.push(`%${category}%`);
            conditions.push(`"Categories".name LIKE $${values.length}`);
        }
        if (sub_category) {
            values.push(`%${sub_category}%`);
            conditions.push(`"SubCategories".name LIKE $${values.length}`);
        }
        if (location) {
            values.push(location);
            conditions.push(`"Users".country = $${values.length}`);
        }
        if (passion) {
            values.push(`%${passion}%`);
            conditions.push(`"Users".passion LIKE $${values.length}`);
        }
        if (hobbies) {
            values.push(`%${hobbies}%`);
            conditions.push(`"Users".hobbies LIKE $${values.length}`);
        }

        const whereClause = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';
        const query = `
            SELECT
                "Pickers_Matches"."Id",
                "Pickers_Matches"."Id_Job",
                "Pickers_Matches"."Id_User",
                "Pickers_Matches"."Match_Type"
            FROM
                public."Pickers_Matches"
            JOIN
                public."Picker_Job" ON "Pickers_Matches"."Id_Job" = "Picker_Job"."Id"
            JOIN
                public."Users" ON "Pickers_Matches"."Id_User" = "Users"."Id"
            JOIN
                public."Corporations" ON "Picker_Job"."IdCorporation" = "Corporations"."Id"
            ${whereClause}
            LIMIT $${values.length + 1} OFFSET $${values.length + 2}
        `;
        
        values.push(limit, offset);

        try {
            await client.connect();
            const res = await client.query(query, values);
            
            const countQuery = `
                SELECT COUNT(*)
                FROM public."Pickers_Matches"
                JOIN public."Picker_Job" ON "Pickers_Matches"."Id_Job" = "Picker_Job"."Id"
                JOIN public."Users" ON "Pickers_Matches"."Id_User" = "Users"."Id"
                JOIN public."Corporations" ON "Picker_Job"."IdCorporation" = "Corporations"."Id"
                ${whereClause}
            `;
            const countRes = await client.query(countQuery, values.slice(0, values.length - 2));
            const total = parseInt(countRes.rows[0].count, 10);

            await client.end();
            return { matches: res.rows, total };
        } catch (error) {
            console.error(error);
            await client.end();
            throw error;
        }
    }
}
