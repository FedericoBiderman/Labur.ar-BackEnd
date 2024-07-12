import { Router } from 'express';
import JobOffersService from './../services/job_offers-service.js';

const router = Router();
const jobOffersService = new JobOffersService();

router.get('/job-offers', async (req, res) => {
    const filters = req.query;
    const userId = req.query.userId;

    try {
        const filteredJobOffers = await jobOffersService.getFilteredJobOffers(filters, userId);

        res.status(200).json({
            success: true,
            message: 'Job offers retrieved successfully.',
            data: filteredJobOffers
        });
    } catch (error) {
        console.error('Error retrieving job offers:', error);
        res.status(500).json({ success: false, message: error.message });
    }
});

export default router;
