import { Router } from 'express';
import MatchesRepository from './../repositories/matches_repository.js'; // Asegúrate de usar la ruta correcta
import { StatusCodes } from 'http-status-codes'; // Puedes instalar este paquete si aún no lo tienes

const router = Router();
const matchesRepo = new MatchesRepository();

// Añadir Matches
router.post('/matches', async (req, res) => {
    const filters = req.body; // Cambié a req.body asumiendo que los datos llegan en el cuerpo de la solicitud

    try {
        await matchesRepo.addMatchesAsync(filters);
        res.status(StatusCodes.CREATED).json({
            success: true,
            message: 'Matches added successfully.'
        });
    } catch (error) {
        console.error('Error adding matches:', error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({ success: false, message: error.message });
    }
});

// Obtener Matches
router.get('/matches', async (req, res) => {
    const { category, sub_category, location, passion, hobbies, limit, offset } = req.query;
    const filters = {
        category,
        sub_category,
        location,
        passion,
        hobbies
    };
    
    try {
        const matches = await matchesRepo.getMatchesAsync(filters, parseInt(limit) || 10, parseInt(offset) || 0);
        res.status(StatusCodes.OK).json({
            success: true,
            message: 'Matches retrieved successfully.',
            data: matches
        });
    } catch (error) {
        console.error('Error retrieving matches:', error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({ success: false, message: error.message });
    }
});

export default router;
