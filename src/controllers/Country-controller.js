import {Router} from 'express';
import { StatusCodes } from 'http-status-codes';
import CountryService from '../services/Country-service.js'
const router = Router();
const svc    = new CountryService();		// Instanciación del Service.

router.get('', async (req, res) => {
  let respuesta;
  const returnArray = await svc.getAllAsync();
  if (returnArray != null){
    respuesta = res.status(StatusCodes.OK).json(returnArray);
  } else {
    respuesta = res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error interno.`);
  }
  return respuesta;
});

router.get('/:id', async (req, res) => {
  let respuesta;
  let id = req.params.id;
  const returnEntity = await svc.getByIdAsync(id);
  if (returnEntity != null){
    respuesta = res.status(StatusCodes.OK).json(returnEntity);
  } else {
    respuesta = res.status(StatusCodes.NOT_FOUND).send(`no se encontro la entidad (id:${id}).`);
  }
  return respuesta;
})

export default router;