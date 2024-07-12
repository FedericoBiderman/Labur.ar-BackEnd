import JobOffersRepository from '../repositories/job_offers-repository.js';
import UsersRepository from '../repositories/users-repository.js';

export default class JobOffersService {
    constructor() {
        this.jobOffersRepo = new JobOffersRepository();
        this.usersRepo = new UsersRepository();
    }

    async getFilteredJobOffers(filters, userId) {
        const user = await this.usersRepo.getById(userId);
        if (!user) {
            throw new Error('User not found');
        }

        const {
            CompanySpecialization,
            Country,
            City,
            Neighborhood,
            AgeMin,
            Salary,
            JobOfferCategory,
            AgeMax
        } = filters;

        let filteredJobOffers = await this.jobOffersRepo.getAll();

        filteredJobOffers = filteredJobOffers.filter(offer => {
            let matches = 0;

            if (CompanySpecialization && offer.CompanySpecialization !== CompanySpecialization) matches++;
            if (Country && offer.Country !== Country) matches++;
            if (City && offer.City !== City) matches++;
            if (Neighborhood && offer.Neighborhood !== Neighborhood) matches++;
            if (AgeMin && offer.AgeMin < AgeMin) matches++;
            if (AgeMax && offer.AgeMax > AgeMax) matches++;
            if (Salary && offer.Salary < Salary) matches++;
            if (JobOfferCategory && offer.JobOfferCategory !== JobOfferCategory) matches++;

            // Example additional matching logic
            if (offer.Country !== user.Country) matches++;

            // Example matching logic based on user attributes and job offer categories
            const userAttributes = [user.Passion, user.Hobbies, ...user.Categories];
            const offerCategories = offer.JobOfferCategory.split(' ');

            const hasMatchingWord = userAttributes.some(attribute => 
                offerCategories.some(category => 
                    category.toLowerCase().includes(attribute.toLowerCase())
                )
            );

            if (!hasMatchingWord) matches++;

            return matches === 0; // Only return offers that match all criteria
        });

        return filteredJobOffers;
    }
}
