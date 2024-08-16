import {Router} from 'express';
//import UserService from './../services/filter-services.js';
import UserService from './../services/filter-services.js';

const router = Router();
const Matches = new FilterService();


//Matches Endpoint
router.get('/matches', async (req, res) => {
    const filters = req.query;
    const userId = req.query.userId;
    ///a

    try {
        const filteredJobOffers = await Matches.getFilteredJobOffers(filters, userId);

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
