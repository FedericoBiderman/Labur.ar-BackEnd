// src/controllers/pursuerM-controller.js
import express from 'express';

const router = express.Router();

router.get('/categoryId', async (req, res) => {
  const { categoryId } = req.params;

  try {
    const users = await findCompatibleUsers(Number(categoryId));
    //ARREGKAR ESTI ACAM NO EXISTE ESA FUNCION
    res.status(200).json(users);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
});

// Exporta el router como default
export default router;
