import express from 'express';
import PursuerService from './../services/pursuer-service.js';

const router = express.Router();

router.get('/:id', async (req, res) => {
  // Extrae el id de categoría directamente de req.params
  const { id } = req.params;
  const svc = new PursuerService();

  try {
    // Pasa el ID convertido a número al servicio
    const users = await svc.findCompatibleUsersAsync(Number(id));
    res.status(200).json(users);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
});

// Exporta el router como default
export default router;
