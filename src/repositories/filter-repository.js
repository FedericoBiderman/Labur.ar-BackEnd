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
            conditions.push(`c1.name LIKE $${values.length}`);
        }
        if (sub_category) {
            values.push(`%${sub_category}%`);
            conditions.push(`c2.name LIKE $${values.length}`);
        }
        if (location) {
            values.push(location);
            conditions.push(`u.country = $${values.length}`);
        }
        if (passion) {
            values.push(`%${passion}%`);
            conditions.push(`u.passion LIKE $${values.length}`);
        }
        if (hobbies) {
            values.push(`%${hobbies}%`);
            conditions.push(`u.hobbies LIKE $${values.length}`);
        }

        const whereClause = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';
        const query = `
            INSERT INTO public."Matches_Types" ("Id_UserPicker", "Id_UserPursuer")
            SELECT
                pj."Id_User" AS UserPickerId,
                u."Id" AS UserPursuerId
            FROM
                public."Picker_Job" pj
            JOIN
                public."Categories" c1 ON pj."Category" = c1."Id"
            LEFT JOIN
                public."Categories" c2 ON pj."Sub_Category" = c2."Id"
            JOIN
                public."Corporations" corp ON pj."IdCorporation" = corp."Id"
            JOIN
                public."Users" u ON u."Country" = corp."Country"
            ${whereClause}
            AND
            (u."Id", pj."Id_User") NOT IN (
                SELECT "Id_UserPursuer", "Id_UserPicker"
                FROM public."Matches_Types"
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
            conditions.push(`c1.name LIKE $${values.length}`);
        }
        if (sub_category) {
            values.push(`%${sub_category}%`);
            conditions.push(`c2.name LIKE $${values.length}`);
        }
        if (location) {
            values.push(location);
            conditions.push(`u.country = $${values.length}`);
        }
        if (passion) {
            values.push(`%${passion}%`);
            conditions.push(`u.passion LIKE $${values.length}`);
        }
        if (hobbies) {
            values.push(`%${hobbies}%`);
            conditions.push(`u.hobbies LIKE $${values.length}`);
        }

        const whereClause = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';
        const query = `
            WITH MatchScores AS (
                SELECT
                    mt."Id_UserPicker",
                    mt."Id_UserPursuer",
                    (
                        -- Calcula la puntuación de coincidencia
                        CASE WHEN pj."Category" = u."Experience1"::integer OR
                                  pj."Category" = u."Experience2"::integer OR
                                  pj."Category" = u."Experience3"::integer
                           THEN 1 ELSE 0 END
                        +
                        CASE WHEN pj."Sub_Category" = u."Experience1"::integer OR
                                  pj."Sub_Category" = u."Experience2"::integer OR
                                  pj."Sub_Category" = u."Experience3"::integer
                           THEN 1 ELSE 0 END
                        +
                        CASE WHEN u."Country" = corp."Country" THEN 1 ELSE 0 END
                        +
                        CASE WHEN u."Passion" LIKE '%' || pj."Description" || '%' OR
                                  u."Hobbies" LIKE '%' || pj."Description" || '%'
                           THEN 1 ELSE 0 END
                    ) AS MatchScore
                FROM
                    public."Matches_Types" mt
                JOIN
                    public."Picker_Job" pj ON mt."Id_UserPicker" = pj."Id_User"
                JOIN
                    public."Users" u ON mt."Id_UserPursuer" = u."Id"
                JOIN
                    public."Corporations" corp ON pj."IdCorporation" = corp."Id"
                ${whereClause}
            )
            SELECT
                ms."Id_UserPicker",
                ms."Id_UserPursuer",
                ms."MatchScore"
            FROM
                MatchScores ms
            ORDER BY
                ms."MatchScore" DESC
            LIMIT $${values.length + 1} OFFSET $${values.length + 2}
        `;
        
        values.push(limit, offset);

        try {
            await client.connect();
            const res = await client.query(query, values);
            
            const countQuery = `
                SELECT COUNT(*)
                FROM (
                    SELECT 1
                    FROM public."Matches_Types" mt
                    JOIN public."Picker_Job" pj ON mt."Id_UserPicker" = pj."Id_User"
                    JOIN public."Users" u ON mt."Id_UserPursuer" = u."Id"
                    JOIN public."Corporations" corp ON pj."IdCorporation" = corp."Id"
                    ${whereClause}
                ) AS count_query
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
