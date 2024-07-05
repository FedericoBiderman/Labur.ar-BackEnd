import JobOffersRepository from '../repositories/job_offers-repository.js';
import UsersRepository from '../repositories/users-repository.js';

export default class JobOffersService {
  getFilteredJobOffersAsync = async (filters, userId) => {
    const jobOffersRepo = new JobOffersRepository();
    const usersRepo = new UsersRepository();

    // Obtener los detalles del usuario
    const user = await usersRepo.getByIdAsync(userId);
    if (!user) {
      throw new Error('Usuario no encontrado');
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

    const jobOffers = await jobOffersRepo.getAllAsync();

    const filteredJobOffers = jobOffers.filter(offer => {

        let matches = 0;
      if (CompanySpecialization && offer.CompanySpecialization !== CompanySpecialization) matches += matches;
      if (Country && offer.Country !== Country) matches += matches;
      if (City && offer.City !== City) matches += matches;
      if (Neighborhood && offer.Neighborhood !== Neighborhood) matches += matches;
      if (AgeMin && offer.AgeMin < AgeMin) matches += matches;
      if (AgeMax && offer.AgeMax > AgeMax) matches += matches;
      if (Salary && offer.Salary < Salary) matches += matches;
      if (JobOfferCategory && offer.JobOfferCategory !== JobOfferCategory) matches += matches;

      if (offer.Country !== user.Country) matches += matches;

      const userAttributes = [user.Passion, user.Hobbies, ...user.Categories];
      const offerCategories = offer.JobOfferCategory.split(' ');

      const hasMatchingWord = userAttributes.some(attribute => 
        offerCategories.some(category => 
          category.toLowerCase().includes(attribute.toLowerCase())
        )
      );

      if (!hasMatchingWord) matches = false;

      return matches;
    });

    return filteredJobOffers;
  }
}
