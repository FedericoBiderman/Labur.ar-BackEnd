import express from "express";
import cors from "cors";
import FilterRouter from "./src/controllers/filter-controller.js";
import UserRouter from "./src/controllers/users-controller.js";
import CategoriesRouter from "./src/controllers/Categories-controller.js";
import GendersRouter from "./src/controllers/Genders-controller.js";
import CountryRouter from "./src/controllers/Country-controller.js";
import Document_TypesRouter from "./src/controllers/Document_Types-controller.js";
import EducationalStatusRouter from "./src/controllers/EducationalStatus-controller.js";
import EducationalInstitutionsRouter from "./src/controllers/EducationalInstitutions-controller.js";
import PursuerMRouter from "./src/controllers/pursuerM-controller.js";

const app = express();
const port = 8080;

// Inclusión de los Middlewares
app.use(cors());
app.use('/assets', express.static('assets'));
app.use(express.json());

// Rutas de API
app.use('/api/filter', FilterRouter);
app.use('/api/user', UserRouter);
app.use('/api/category', CategoriesRouter);
app.use('/api/gender', GendersRouter);
app.use('/api/country', CountryRouter);
app.use('/api/document_types', Document_TypesRouter);
app.use('/api/educational_status', EducationalStatusRouter);
app.use('/api/educational_institutions', EducationalInstitutionsRouter);
app.use('/api/pursuerM', PursuerMRouter); 

// app.use(unknownEndpoint);
app.listen(port, () => {
  console.log(`"server" Listening on port ${port}`);
});
