import MatchesRepository from './../repositories/matches_repository.js';

export default class FilterService {
    constructor() {
        this.matchesRepo = new MatchesRepository();
    }

    // Añadir nuevos matches basados en filtros
    addMatchesAsync = async (filters) => {
        try {
            await this.matchesRepo.addMatchesAsync(filters);
            return { success: true, message: 'Matches added successfully.' };
        } catch (error) {
            console.error('Error adding matches:', error);
            throw new Error(error.message);
        }
    }

    // Obtener y ordenar matches basados en filtros
    getMatchesAsync = async (filters, limit = 10, offset = 0) => {
        try {
            const result = await this.matchesRepo.getMatchesAsync(filters, limit, offset);
            return { success: true, data: result };
        } catch (error) {
            console.error('Error retrieving matches:', error);
            throw new Error(error.message);
        }
    }

    // Método de autenticación para usuarios (ejemplo de uso de UserRepository)
    getByUsernamePasswordAsync = async (username, password) => {
        const repo = new UserRepository(); // Asegúrate de que UserRepository esté definido e importado
        const returnArray = await repo.getByUsernamePasswordAsync(username, password);
        return returnArray;
    }

    // Crear un nuevo usuario (ejemplo de uso de UserRepository)
    createUserAsync = async (entity) => {
        const repo = new UserRepository(); // Asegúrate de que UserRepository esté definido e importado
        const rowsAffected = await repo.createUserAsync(entity);
        return rowsAffected;
    }
}
