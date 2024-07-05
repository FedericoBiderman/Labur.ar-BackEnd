import { Router } from 'express';
import JobOffersService from './../services/job_offers-service.js';

const router = Router();
const svc = new JobOffersService();

router.get('/job-offers', async (req, res) => {
    const filters = req.query;
    const userId = req.query.userId;

    try {
        // Obtener ofertas de trabajo filtradas
        const jobOffers = await svc.getFilteredJobOffersAsync(filters, userId);

        res.status(200).json({
            success: true,
            message: 'Ofertas de trabajo obtenidas exitosamente.',
            data: jobOffers
        });
    } catch (error) {
        console.error('Error al obtener ofertas de trabajo:', error);
        res.status(500).json({ success: false, message: error.message });
    }
});

export default router;
