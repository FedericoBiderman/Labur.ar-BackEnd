import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';
import CategoriesXnameService from '../services/CategoriesXname-service.js';

const router = Router();
const svc = new CategoriesXnameService();

// Obtener categoría por su nombre
router.get('/CategoriesXname/:name', async (req, res) => {
  const name = req.params.name;
  let respuesta;

  try {
    const category = await svc.getCategoryByNameAsync(name);
    if (category) {
      respuesta = res.status(StatusCodes.OK).json(category);
    } else {
      respuesta = res.status(StatusCodes.NOT_FOUND).send(`No se encontró la categoría con el nombre: ${name}`);
    }
  } catch (error) {
    console.error(error);
    respuesta = res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error interno del servidor.`);
  }

  return respuesta;
});

export default router;
