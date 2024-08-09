--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2024-07-05 11:22:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;

ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16506)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "IdParent" integer
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16511)
-- Name: Categories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categories_Id_seq" OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_Id_seq" OWNED BY public."Categories"."Id";


--
-- TOC entry 217 (class 1259 OID 16512)
-- Name: Corporations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Corporations" (
    "User" integer NOT NULL,
    "CorporationName" character varying(100) NOT NULL,
    "CompanySpecialization" integer NOT NULL,
    "Country" integer NOT NULL,
    "City" integer NOT NULL,
    "Neighborhood" integer NOT NULL,
    "JobOfferCategory" integer NOT NULL,
    "Id" integer NOT NULL
);


ALTER TABLE public."Corporations" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16515)
-- Name: Corporations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Corporations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Corporations_Id_seq" OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 218
-- Name: Corporations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Corporations_Id_seq" OWNED BY public."Corporations"."Id";


--
-- TOC entry 219 (class 1259 OID 16516)
-- Name: Countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Countries" (
    "Id" integer NOT NULL,
    "Name" character varying(100),
    alpha_2 character varying(50)
);


ALTER TABLE public."Countries" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16519)
-- Name: Countries_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Countries_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Countries_Id_seq" OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 220
-- Name: Countries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Countries_Id_seq" OWNED BY public."Countries"."Id";


--
-- TOC entry 221 (class 1259 OID 16520)
-- Name: Document_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Document_Types" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."Document_Types" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16523)
-- Name: Document_Types_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Document_Types_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Document_Types_Id_seq" OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 222
-- Name: Document_Types_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Document_Types_Id_seq" OWNED BY public."Document_Types"."Id";


--
-- TOC entry 223 (class 1259 OID 16524)
-- Name: EducationalInstitutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalInstitutions" (
    "Id" integer NOT NULL,
    "Name" character varying(150)
);


ALTER TABLE public."EducationalInstitutions" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16527)
-- Name: EducationalInstitutions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EducationalInstitutions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EducationalInstitutions_Id_seq" OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 224
-- Name: EducationalInstitutions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EducationalInstitutions_Id_seq" OWNED BY public."EducationalInstitutions"."Id";


--
-- TOC entry 225 (class 1259 OID 16528)
-- Name: EducationalStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalStatus" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."EducationalStatus" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16531)
-- Name: EducationalStatus_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EducationalStatus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EducationalStatus_Id_seq" OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 226
-- Name: EducationalStatus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EducationalStatus_Id_seq" OWNED BY public."EducationalStatus"."Id";


--
-- TOC entry 227 (class 1259 OID 16532)
-- Name: Genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genders" (
    "Id" integer NOT NULL,
    "Name" text
);


ALTER TABLE public."Genders" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16537)
-- Name: Genders_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Genders_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Genders_Id_seq" OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 228
-- Name: Genders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Genders_Id_seq" OWNED BY public."Genders"."Id";


--
-- TOC entry 229 (class 1259 OID 16538)
-- Name: JobOffer_Category_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_Category_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_Category_seq" OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 229
-- Name: JobOffer_Category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Category_seq" OWNED BY public."Corporations"."JobOfferCategory";


--
-- TOC entry 230 (class 1259 OID 16539)
-- Name: JobOffer_City_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_City_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_City_seq" OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 230
-- Name: JobOffer_City_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_City_seq" OWNED BY public."Corporations"."City";


--
-- TOC entry 231 (class 1259 OID 16540)
-- Name: JobOffer_CompanySpecialization_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_CompanySpecialization_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_CompanySpecialization_seq" OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 231
-- Name: JobOffer_CompanySpecialization_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_CompanySpecialization_seq" OWNED BY public."Corporations"."CompanySpecialization";


--
-- TOC entry 232 (class 1259 OID 16541)
-- Name: JobOffer_Country_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_Country_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_Country_seq" OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 232
-- Name: JobOffer_Country_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Country_seq" OWNED BY public."Corporations"."Country";


--
-- TOC entry 233 (class 1259 OID 16542)
-- Name: JobOffer_Neighborhood_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_Neighborhood_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_Neighborhood_seq" OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 233
-- Name: JobOffer_Neighborhood_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Neighborhood_seq" OWNED BY public."Corporations"."Neighborhood";


--
-- TOC entry 234 (class 1259 OID 16543)
-- Name: JobOffer_User_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_User_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_User_seq" OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 234
-- Name: JobOffer_User_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_User_seq" OWNED BY public."Corporations"."User";


--
-- TOC entry 235 (class 1259 OID 16544)
-- Name: Matches_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Matches_Types" (
    "Id" int
);


ALTER TABLE public."Matches_Types" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16547)
-- Name: Picker_Job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Picker_Job" (
    "Id_User" int,
    "Title" text,
    "Description" text,
    "Category" integer,
    "Sub_Category" integer,
    "Date_Created" date,
    "AgeMax" int,
    "AgeMin" int,
    "Salary" int,
    "IdCorporation" integer,
    "Id" integer NOT NULL
);


ALTER TABLE public."Picker_Job" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16552)
-- Name: Picker_Job_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Picker_Job_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Picker_Job_Id_seq" OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 237
-- Name: Picker_Job_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Picker_Job_Id_seq" OWNED BY public."Picker_Job"."Id";


--
-- TOC entry 238 (class 1259 OID 16553)
-- Name: Pickers_Matches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pickers_Matches" (
    "Id" int,
    "Id_Job" int,
    "Id_User" int,
    "Match_Type" int
);


ALTER TABLE public."Pickers_Matches" OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16599)
-- Name: UserCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserCategories" (
    "Id" integer NOT NULL,
    "IdUser" integer NOT NULL,
    "IdCategory" integer
);


ALTER TABLE public."UserCategories" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16598)
-- Name: UserCategories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserCategories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserCategories_Id_seq" OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 243
-- Name: UserCategories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserCategories_Id_seq" OWNED BY public."UserCategories"."Id";


--
-- TOC entry 239 (class 1259 OID 16556)
-- Name: UserStudies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserStudies" (
    "Id" integer NOT NULL,
    "IdUser" integer NOT NULL,
    "IdEducationalInstitution" integer NOT NULL,
    "IdEducationalStatus" integer NOT NULL,
    "Major" character varying(150) NOT NULL
);


ALTER TABLE public."UserStudies" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16559)
-- Name: UserEducations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserEducations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserEducations_Id_seq" OWNER TO postgres;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 240
-- Name: UserEducations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserEducations_Id_seq" OWNED BY public."UserStudies"."Id";


--
-- TOC entry 241 (class 1259 OID 16560)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Name" text,
    "Creation_Date" date,
    "Document_Type" integer,
    "Surname" text,
    "Birthdate" date,
    "Gender" int,
    "Document_Number" bigint,
    "Email" character varying(320),
    "Password" character varying(20),
    "Phone" character varying(50),
    "Passion" character varying(1024),
    "Hobbies" character varying(1024),
    "Seeking" character varying(1024),
    "Experience1" character varying(150),
    "Experience2" character varying(150),
    "Experience3" character varying(150),
    "Id" integer NOT NULL,
    "Country" integer
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16565)
-- Name: User_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Id_seq" OWNER TO postgres;

--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 242
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 4698 (class 2604 OID 16566)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 4699 (class 2604 OID 16567)
-- Name: Corporations User; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "User" SET DEFAULT nextval('public."JobOffer_User_seq"'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16568)
-- Name: Corporations CompanySpecialization; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "CompanySpecialization" SET DEFAULT nextval('public."JobOffer_CompanySpecialization_seq"'::regclass);


--
-- TOC entry 4701 (class 2604 OID 16569)
-- Name: Corporations Country; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Country" SET DEFAULT nextval('public."JobOffer_Country_seq"'::regclass);


--
-- TOC entry 4702 (class 2604 OID 16570)
-- Name: Corporations City; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "City" SET DEFAULT nextval('public."JobOffer_City_seq"'::regclass);


--
-- TOC entry 4703 (class 2604 OID 16571)
-- Name: Corporations Neighborhood; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Neighborhood" SET DEFAULT nextval('public."JobOffer_Neighborhood_seq"'::regclass);


--
-- TOC entry 4704 (class 2604 OID 16572)
-- Name: Corporations JobOfferCategory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "JobOfferCategory" SET DEFAULT nextval('public."JobOffer_Category_seq"'::regclass);


--
-- TOC entry 4705 (class 2604 OID 16573)
-- Name: Corporations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Corporations_Id_seq"'::regclass);


--
-- TOC entry 4706 (class 2604 OID 16574)
-- Name: Countries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Countries_Id_seq"'::regclass);


--
-- TOC entry 4707 (class 2604 OID 16575)
-- Name: Document_Types Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types" ALTER COLUMN "Id" SET DEFAULT nextval('public."Document_Types_Id_seq"'::regclass);


--
-- TOC entry 4708 (class 2604 OID 16576)
-- Name: EducationalInstitutions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalInstitutions_Id_seq"'::regclass);


--
-- TOC entry 4709 (class 2604 OID 16577)
-- Name: EducationalStatus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalStatus_Id_seq"'::regclass);


--
-- TOC entry 4710 (class 2604 OID 16578)
-- Name: Genders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Genders_Id_seq"'::regclass);


--
-- TOC entry 4711 (class 2604 OID 16579)
-- Name: Picker_Job Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Picker_Job" ALTER COLUMN "Id" SET DEFAULT nextval('public."Picker_Job_Id_seq"'::regclass);


--
-- TOC entry 4714 (class 2604 OID 16602)
-- Name: UserCategories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategories" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserCategories_Id_seq"'::regclass);


--
-- TOC entry 4712 (class 2604 OID 16580)
-- Name: UserStudies Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserStudies" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserEducations_Id_seq"'::regclass);


--
-- TOC entry 4713 (class 2604 OID 16581)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."User_Id_seq"'::regclass);


--
-- TOC entry 4876 (class 0 OID 16506)
-- Dependencies: 215
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Categories" VALUES (1, 'Programmer', NULL);
INSERT INTO public."Categories" VALUES (2, 'Scientist', NULL);
INSERT INTO public."Categories" VALUES (3, 'Web Developer', 1);
INSERT INTO public."Categories" VALUES (4, 'BackEnd Developer', 1);
INSERT INTO public."Categories" VALUES (5, 'Junior', 4);
INSERT INTO public."Categories" VALUES (6, 'Sr.', 4);
INSERT INTO public."Categories" VALUES (7, 'Semi Sr.', 4);
INSERT INTO public."Categories" VALUES (9, 'Engineer', NULL);
INSERT INTO public."Categories" VALUES (10, 'Civil Engineer', 9);
INSERT INTO public."Categories" VALUES (11, 'Mechanical Engineer', 9);
INSERT INTO public."Categories" VALUES (12, 'Electrical Engineer', 9);
INSERT INTO public."Categories" VALUES (13, 'Software Engineer', 9);
INSERT INTO public."Categories" VALUES (14, 'Chemical Engineer', 9);
INSERT INTO public."Categories" VALUES (15, 'Aeronautical Engineer', 9);
INSERT INTO public."Categories" VALUES (16, 'Biomedical Engineer', 9);
INSERT INTO public."Categories" VALUES (17, 'Environmental Engineer', 9);
INSERT INTO public."Categories" VALUES (18, 'Industrial Engineer', 9);
INSERT INTO public."Categories" VALUES (19, 'Petroleum Engineer', 9);
INSERT INTO public."Categories" VALUES (20, 'Systems Engineer', 9);
INSERT INTO public."Categories" VALUES (21, 'Computer Engineer', 9);
INSERT INTO public."Categories" VALUES (22, 'Industrial Engineer', 9);
INSERT INTO public."Categories" VALUES (23, 'Business Administration', NULL);
INSERT INTO public."Categories" VALUES (24, 'Finance', NULL);
INSERT INTO public."Categories" VALUES (25, 'Human Resources', NULL);
INSERT INTO public."Categories" VALUES (26, 'Operations Management', NULL);
INSERT INTO public."Categories" VALUES (27, 'Strategic Management', NULL);
INSERT INTO public."Categories" VALUES (28, 'Marketing', NULL);
INSERT INTO public."Categories" VALUES (29, 'Digital Marketing', NULL);
INSERT INTO public."Categories" VALUES (30, 'Market Research', NULL);
INSERT INTO public."Categories" VALUES (31, 'Brand Management', NULL);
INSERT INTO public."Categories" VALUES (32, 'Social Media Marketing', NULL);
INSERT INTO public."Categories" VALUES (33, 'Psychology', NULL);
INSERT INTO public."Categories" VALUES (34, 'Clinical Psychology', NULL);
INSERT INTO public."Categories" VALUES (35, 'Counseling Psychology', NULL);
INSERT INTO public."Categories" VALUES (36, 'Educational Psychology', NULL);
INSERT INTO public."Categories" VALUES (37, 'Industrial-Organizational Psychology', NULL);
INSERT INTO public."Categories" VALUES (38, 'Neuropsychology', NULL);
INSERT INTO public."Categories" VALUES (39, 'Sports Psychology', NULL);
INSERT INTO public."Categories" VALUES (40, 'Vocational Guidance', NULL);
INSERT INTO public."Categories" VALUES (41, 'Medical', NULL);
INSERT INTO public."Categories" VALUES (42, 'Cardiologist', 41);
INSERT INTO public."Categories" VALUES (43, 'Dermatologist', 41);
INSERT INTO public."Categories" VALUES (44, 'Endocrinologist', 41);
INSERT INTO public."Categories" VALUES (45, 'Gastroenterologist', 41);
INSERT INTO public."Categories" VALUES (46, 'Neurologist', 41);
INSERT INTO public."Categories" VALUES (47, 'Orthopedic Surgeon', 41);
INSERT INTO public."Categories" VALUES (48, 'Pediatrician', 41);
INSERT INTO public."Categories" VALUES (49, 'Psychiatrist', 41);
INSERT INTO public."Categories" VALUES (50, 'Radiologist', 41);
INSERT INTO public."Categories" VALUES (51, 'Urologist', 41);


--
-- TOC entry 4878 (class 0 OID 16512)
-- Dependencies: 217
-- Data for Name: Corporations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4880 (class 0 OID 16516)
-- Dependencies: 219
-- Data for Name: Countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Countries" VALUES (5, 'Afghanistan', 'AF');
INSERT INTO public."Countries" VALUES (6, 'Åland Islands', 'AX');
INSERT INTO public."Countries" VALUES (7, 'Albania', 'AL');
INSERT INTO public."Countries" VALUES (8, 'Algeria', 'DZ');
INSERT INTO public."Countries" VALUES (9, 'American Samoa', 'AS');
INSERT INTO public."Countries" VALUES (10, 'Andorra', 'AD');
INSERT INTO public."Countries" VALUES (11, 'Angola', 'AO');
INSERT INTO public."Countries" VALUES (12, 'Anguilla', 'AI');
INSERT INTO public."Countries" VALUES (13, 'Antarctica', 'AQ');
INSERT INTO public."Countries" VALUES (14, 'Antigua and Barbuda', 'AG');
INSERT INTO public."Countries" VALUES (15, 'Argentina', 'AR');
INSERT INTO public."Countries" VALUES (16, 'Armenia', 'AM');
INSERT INTO public."Countries" VALUES (17, 'Aruba', 'AW');
INSERT INTO public."Countries" VALUES (18, 'Australia', 'AU');
INSERT INTO public."Countries" VALUES (19, 'Austria', 'AT');
INSERT INTO public."Countries" VALUES (20, 'Azerbaijan', 'AZ');
INSERT INTO public."Countries" VALUES (21, 'Bahamas', 'BS');
INSERT INTO public."Countries" VALUES (22, 'Bahrain', 'BH');
INSERT INTO public."Countries" VALUES (23, 'Bangladesh', 'BD');
INSERT INTO public."Countries" VALUES (24, 'Barbados', 'BB');
INSERT INTO public."Countries" VALUES (25, 'Belarus', 'BY');
INSERT INTO public."Countries" VALUES (26, 'Belgium', 'BE');
INSERT INTO public."Countries" VALUES (27, 'Belize', 'BZ');
INSERT INTO public."Countries" VALUES (28, 'Benin', 'BJ');
INSERT INTO public."Countries" VALUES (29, 'Bermuda', 'BM');
INSERT INTO public."Countries" VALUES (30, 'Bhutan', 'BT');
INSERT INTO public."Countries" VALUES (31, 'Bolivia (Plurinational State of)', 'BO');
INSERT INTO public."Countries" VALUES (32, 'Bonaire, Sint Eustatius and Saba', 'BQ');
INSERT INTO public."Countries" VALUES (33, 'Bosnia and Herzegovina', 'BA');
INSERT INTO public."Countries" VALUES (34, 'Botswana', 'BW');
INSERT INTO public."Countries" VALUES (35, 'Bouvet Island', 'BV');
INSERT INTO public."Countries" VALUES (36, 'Brazil', 'BR');
INSERT INTO public."Countries" VALUES (37, 'British Indian Ocean Territory', 'IO');
INSERT INTO public."Countries" VALUES (38, 'Brunei Darussalam', 'BN');
INSERT INTO public."Countries" VALUES (39, 'Bulgaria', 'BG');
INSERT INTO public."Countries" VALUES (40, 'Burkina Faso', 'BF');
INSERT INTO public."Countries" VALUES (41, 'Burundi', 'BI');
INSERT INTO public."Countries" VALUES (42, 'Cabo Verde', 'CV');
INSERT INTO public."Countries" VALUES (43, 'Cambodia', 'KH');
INSERT INTO public."Countries" VALUES (44, 'Cameroon', 'CM');
INSERT INTO public."Countries" VALUES (45, 'Canada', 'CA');
INSERT INTO public."Countries" VALUES (46, 'Cayman Islands', 'KY');
INSERT INTO public."Countries" VALUES (47, 'Central African Republic', 'CF');
INSERT INTO public."Countries" VALUES (48, 'Chad', 'TD');
INSERT INTO public."Countries" VALUES (49, 'Chile', 'CL');
INSERT INTO public."Countries" VALUES (50, 'China', 'CN');
INSERT INTO public."Countries" VALUES (51, 'Christmas Island', 'CX');
INSERT INTO public."Countries" VALUES (52, 'Cocos (Keeling) Islands', 'CC');
INSERT INTO public."Countries" VALUES (53, 'Colombia', 'CO');
INSERT INTO public."Countries" VALUES (54, 'Comoros', 'KM');
INSERT INTO public."Countries" VALUES (55, 'Congo', 'CG');
INSERT INTO public."Countries" VALUES (56, 'Congo, Democratic Republic of the', 'CD');
INSERT INTO public."Countries" VALUES (57, 'Cook Islands', 'CK');
INSERT INTO public."Countries" VALUES (58, 'Costa Rica', 'CR');
INSERT INTO public."Countries" VALUES (59, 'Côte dIvoire', 'CI');
INSERT INTO public."Countries" VALUES (60, 'Croatia', 'HR');
INSERT INTO public."Countries" VALUES (61, 'Cuba', 'CU');
INSERT INTO public."Countries" VALUES (62, 'Curaçao', 'CW');
INSERT INTO public."Countries" VALUES (63, 'Cyprus', 'CY');
INSERT INTO public."Countries" VALUES (64, 'Czechia', 'CZ');
INSERT INTO public."Countries" VALUES (65, 'Denmark', 'DK');
INSERT INTO public."Countries" VALUES (66, 'Djibouti', 'DJ');
INSERT INTO public."Countries" VALUES (67, 'Dominica', 'DM');
INSERT INTO public."Countries" VALUES (68, 'Dominican Republic', 'DO');
INSERT INTO public."Countries" VALUES (69, 'Ecuador', 'EC');
INSERT INTO public."Countries" VALUES (70, 'Egypt', 'EG');
INSERT INTO public."Countries" VALUES (71, 'El Salvador', 'SV');
INSERT INTO public."Countries" VALUES (72, 'Equatorial Guinea', 'GQ');
INSERT INTO public."Countries" VALUES (73, 'Eritrea', 'ER');
INSERT INTO public."Countries" VALUES (74, 'Estonia', 'EE');
INSERT INTO public."Countries" VALUES (75, 'Eswatini', 'SZ');
INSERT INTO public."Countries" VALUES (76, 'Ethiopia', 'ET');
INSERT INTO public."Countries" VALUES (77, 'Falkland Islands (Malvinas)', 'FK');
INSERT INTO public."Countries" VALUES (78, 'Faroe Islands', 'FO');
INSERT INTO public."Countries" VALUES (79, 'Fiji', 'FJ');
INSERT INTO public."Countries" VALUES (80, 'Finland', 'FI');
INSERT INTO public."Countries" VALUES (81, 'France', 'FR');
INSERT INTO public."Countries" VALUES (82, 'French Guiana', 'GF');
INSERT INTO public."Countries" VALUES (83, 'French Polynesia', 'PF');
INSERT INTO public."Countries" VALUES (84, 'French Southern Territories', 'TF');
INSERT INTO public."Countries" VALUES (85, 'Gabon', 'GA');
INSERT INTO public."Countries" VALUES (86, 'Gambia', 'GM');
INSERT INTO public."Countries" VALUES (87, 'Georgia', 'GE');
INSERT INTO public."Countries" VALUES (88, 'Germany', 'DE');
INSERT INTO public."Countries" VALUES (89, 'Ghana', 'GH');
INSERT INTO public."Countries" VALUES (90, 'Gibraltar', 'GI');
INSERT INTO public."Countries" VALUES (91, 'Greece', 'GR');
INSERT INTO public."Countries" VALUES (92, 'Greenland', 'GL');
INSERT INTO public."Countries" VALUES (93, 'Grenada', 'GD');
INSERT INTO public."Countries" VALUES (94, 'Guadeloupe', 'GP');
INSERT INTO public."Countries" VALUES (95, 'Guam', 'GU');
INSERT INTO public."Countries" VALUES (96, 'Guatemala', 'GT');
INSERT INTO public."Countries" VALUES (97, 'Guernsey', 'GG');
INSERT INTO public."Countries" VALUES (98, 'Guinea', 'GN');
INSERT INTO public."Countries" VALUES (99, 'Guinea-Bissau', 'GW');
INSERT INTO public."Countries" VALUES (100, 'Guyana', 'GY');
INSERT INTO public."Countries" VALUES (101, 'Haiti', 'HT');
INSERT INTO public."Countries" VALUES (102, 'Heard Island and McDonald Islands', 'HM');
INSERT INTO public."Countries" VALUES (103, 'Holy See', 'VA');
INSERT INTO public."Countries" VALUES (104, 'Honduras', 'HN');
INSERT INTO public."Countries" VALUES (105, 'Hong Kong', 'HK');
INSERT INTO public."Countries" VALUES (106, 'Hungary', 'HU');
INSERT INTO public."Countries" VALUES (107, 'Iceland', 'IS');
INSERT INTO public."Countries" VALUES (108, 'India', 'IN');
INSERT INTO public."Countries" VALUES (109, 'Indonesia', 'ID');
INSERT INTO public."Countries" VALUES (110, 'Iran (Islamic Republic of)', 'IR');
INSERT INTO public."Countries" VALUES (111, 'Iraq', 'IQ');
INSERT INTO public."Countries" VALUES (112, 'Ireland', 'IE');
INSERT INTO public."Countries" VALUES (113, 'Isle of Man', 'IM');
INSERT INTO public."Countries" VALUES (114, 'Israel', 'IL');
INSERT INTO public."Countries" VALUES (115, 'Italy', 'IT');
INSERT INTO public."Countries" VALUES (116, 'Jamaica', 'JM');
INSERT INTO public."Countries" VALUES (117, 'Japan', 'JP');
INSERT INTO public."Countries" VALUES (118, 'Jersey', 'JE');
INSERT INTO public."Countries" VALUES (119, 'Jordan', 'JO');
INSERT INTO public."Countries" VALUES (120, 'Kazakhstan', 'KZ');
INSERT INTO public."Countries" VALUES (121, 'Kenya', 'KE');
INSERT INTO public."Countries" VALUES (122, 'Kiribati', 'KI');
INSERT INTO public."Countries" VALUES (123, 'Korea (Democratic Peoples Republic of)', 'KP');
INSERT INTO public."Countries" VALUES (124, 'Korea, Republic of', 'KR');
INSERT INTO public."Countries" VALUES (125, 'Kuwait', 'KW');
INSERT INTO public."Countries" VALUES (126, 'Kyrgyzstan', 'KG');
INSERT INTO public."Countries" VALUES (127, 'Lao Peoples Democratic Republic', 'LA');
INSERT INTO public."Countries" VALUES (128, 'Latvia', 'LV');
INSERT INTO public."Countries" VALUES (129, 'Lebanon', 'LB');
INSERT INTO public."Countries" VALUES (130, 'Lesotho', 'LS');
INSERT INTO public."Countries" VALUES (131, 'Liberia', 'LR');
INSERT INTO public."Countries" VALUES (132, 'Libya', 'LY');
INSERT INTO public."Countries" VALUES (133, 'Liechtenstein', 'LI');
INSERT INTO public."Countries" VALUES (134, 'Lithuania', 'LT');
INSERT INTO public."Countries" VALUES (135, 'Luxembourg', 'LU');
INSERT INTO public."Countries" VALUES (136, 'Macao', 'MO');
INSERT INTO public."Countries" VALUES (137, 'Madagascar', 'MG');
INSERT INTO public."Countries" VALUES (138, 'Malawi', 'MW');
INSERT INTO public."Countries" VALUES (139, 'Malaysia', 'MY');
INSERT INTO public."Countries" VALUES (140, 'Maldives', 'MV');
INSERT INTO public."Countries" VALUES (141, 'Mali', 'ML');
INSERT INTO public."Countries" VALUES (142, 'Malta', 'MT');
INSERT INTO public."Countries" VALUES (143, 'Marshall Islands', 'MH');
INSERT INTO public."Countries" VALUES (144, 'Martinique', 'MQ');
INSERT INTO public."Countries" VALUES (145, 'Mauritania', 'MR');
INSERT INTO public."Countries" VALUES (146, 'Mauritius', 'MU');
INSERT INTO public."Countries" VALUES (147, 'Mayotte', 'YT');
INSERT INTO public."Countries" VALUES (148, 'Mexico', 'MX');
INSERT INTO public."Countries" VALUES (149, 'Micronesia (Federated States of)', 'FM');
INSERT INTO public."Countries" VALUES (150, 'Moldova, Republic of', 'MD');
INSERT INTO public."Countries" VALUES (151, 'Monaco', 'MC');
INSERT INTO public."Countries" VALUES (152, 'Mongolia', 'MN');
INSERT INTO public."Countries" VALUES (153, 'Montenegro', 'ME');
INSERT INTO public."Countries" VALUES (154, 'Montserrat', 'MS');
INSERT INTO public."Countries" VALUES (155, 'Morocco', 'MA');
INSERT INTO public."Countries" VALUES (156, 'Mozambique', 'MZ');
INSERT INTO public."Countries" VALUES (157, 'Myanmar', 'MM');
INSERT INTO public."Countries" VALUES (158, 'Namibia', 'NA');
INSERT INTO public."Countries" VALUES (159, 'Nauru', 'NR');
INSERT INTO public."Countries" VALUES (160, 'Nepal', 'NP');
INSERT INTO public."Countries" VALUES (161, 'Netherlands', 'NL');
INSERT INTO public."Countries" VALUES (162, 'New Caledonia', 'NC');
INSERT INTO public."Countries" VALUES (163, 'New Zealand', 'NZ');
INSERT INTO public."Countries" VALUES (164, 'Nicaragua', 'NI');
INSERT INTO public."Countries" VALUES (165, 'Niger', 'NE');
INSERT INTO public."Countries" VALUES (166, 'Nigeria', 'NG');
INSERT INTO public."Countries" VALUES (167, 'Niue', 'NU');
INSERT INTO public."Countries" VALUES (168, 'Norfolk Island', 'NF');
INSERT INTO public."Countries" VALUES (169, 'North Macedonia', 'MK');
INSERT INTO public."Countries" VALUES (170, 'Northern Mariana Islands', 'MP');
INSERT INTO public."Countries" VALUES (171, 'Norway', 'NO');
INSERT INTO public."Countries" VALUES (172, 'Oman', 'OM');
INSERT INTO public."Countries" VALUES (173, 'Pakistan', 'PK');
INSERT INTO public."Countries" VALUES (174, 'Palau', 'PW');
INSERT INTO public."Countries" VALUES (175, 'Palestine, State of', 'PS');
INSERT INTO public."Countries" VALUES (176, 'Panama', 'PA');
INSERT INTO public."Countries" VALUES (177, 'Papua New Guinea', 'PG');
INSERT INTO public."Countries" VALUES (178, 'Paraguay', 'PY');
INSERT INTO public."Countries" VALUES (179, 'Peru', 'PE');
INSERT INTO public."Countries" VALUES (180, 'Philippines', 'PH');
INSERT INTO public."Countries" VALUES (181, 'Pitcairn', 'PN');
INSERT INTO public."Countries" VALUES (182, 'Poland', 'PL');
INSERT INTO public."Countries" VALUES (183, 'Portugal', 'PT');
INSERT INTO public."Countries" VALUES (184, 'Puerto Rico', 'PR');
INSERT INTO public."Countries" VALUES (185, 'Qatar', 'QA');
INSERT INTO public."Countries" VALUES (186, 'Réunion', 'RE');
INSERT INTO public."Countries" VALUES (187, 'Romania', 'RO');
INSERT INTO public."Countries" VALUES (188, 'Russian Federation', 'RU');
INSERT INTO public."Countries" VALUES (189, 'Rwanda', 'RW');
INSERT INTO public."Countries" VALUES (190, 'Saint Barthélemy', 'BL');
INSERT INTO public."Countries" VALUES (191, 'Saint Helena, Ascension and Tristan da Cunha', 'SH');
INSERT INTO public."Countries" VALUES (192, 'Saint Kitts and Nevis', 'KN');
INSERT INTO public."Countries" VALUES (193, 'Saint Lucia', 'LC');
INSERT INTO public."Countries" VALUES (194, 'Saint Martin (French part)', 'MF');
INSERT INTO public."Countries" VALUES (195, 'Saint Pierre and Miquelon', 'PM');
INSERT INTO public."Countries" VALUES (196, 'Saint Vincent and the Grenadines', 'VC');
INSERT INTO public."Countries" VALUES (197, 'Samoa', 'WS');
INSERT INTO public."Countries" VALUES (198, 'San Marino', 'SM');
INSERT INTO public."Countries" VALUES (199, 'Sao Tome and Principe', 'ST');
INSERT INTO public."Countries" VALUES (200, 'Saudi Arabia', 'SA');
INSERT INTO public."Countries" VALUES (201, 'Senegal', 'SN');
INSERT INTO public."Countries" VALUES (202, 'Serbia', 'RS');
INSERT INTO public."Countries" VALUES (203, 'Seychelles', 'SC');
INSERT INTO public."Countries" VALUES (204, 'Sierra Leone', 'SL');
INSERT INTO public."Countries" VALUES (205, 'Singapore', 'SG');
INSERT INTO public."Countries" VALUES (206, 'Sint Maarten (Dutch part)', 'SX');
INSERT INTO public."Countries" VALUES (207, 'Slovakia', 'SK');
INSERT INTO public."Countries" VALUES (208, 'Slovenia', 'SI');
INSERT INTO public."Countries" VALUES (209, 'Solomon Islands', 'SB');
INSERT INTO public."Countries" VALUES (210, 'Somalia', 'SO');
INSERT INTO public."Countries" VALUES (211, 'South Africa', 'ZA');
INSERT INTO public."Countries" VALUES (212, 'South Georgia and the South Sandwich Islands', 'GS');
INSERT INTO public."Countries" VALUES (213, 'South Sudan', 'SS');
INSERT INTO public."Countries" VALUES (214, 'Spain', 'ES');
INSERT INTO public."Countries" VALUES (215, 'Sri Lanka', 'LK');
INSERT INTO public."Countries" VALUES (216, 'Sudan', 'SD');
INSERT INTO public."Countries" VALUES (217, 'Suriname', 'SR');
INSERT INTO public."Countries" VALUES (218, 'Svalbard and Jan Mayen', 'SJ');
INSERT INTO public."Countries" VALUES (219, 'Sweden', 'SE');
INSERT INTO public."Countries" VALUES (220, 'Switzerland', 'CH');
INSERT INTO public."Countries" VALUES (221, 'Syrian Arab Republic', 'SY');
INSERT INTO public."Countries" VALUES (222, 'Taiwan, Province of China[a]', 'TW');
INSERT INTO public."Countries" VALUES (223, 'Tajikistan', 'TJ');
INSERT INTO public."Countries" VALUES (224, 'Tanzania, United Republic of', 'TZ');
INSERT INTO public."Countries" VALUES (225, 'Thailand', 'TH');
INSERT INTO public."Countries" VALUES (226, 'Timor-Leste', 'TL');
INSERT INTO public."Countries" VALUES (227, 'Togo', 'TG');
INSERT INTO public."Countries" VALUES (228, 'Tokelau', 'TK');
INSERT INTO public."Countries" VALUES (229, 'Tonga', 'TO');
INSERT INTO public."Countries" VALUES (230, 'Trinidad and Tobago', 'TT');
INSERT INTO public."Countries" VALUES (231, 'Tunisia', 'TN');
INSERT INTO public."Countries" VALUES (232, 'Turkey', 'TR');
INSERT INTO public."Countries" VALUES (233, 'Turkmenistan', 'TM');
INSERT INTO public."Countries" VALUES (234, 'Turks and Caicos Islands', 'TC');
INSERT INTO public."Countries" VALUES (235, 'Tuvalu', 'TV');
INSERT INTO public."Countries" VALUES (236, 'Uganda', 'UG');
INSERT INTO public."Countries" VALUES (237, 'Ukraine', 'UA');
INSERT INTO public."Countries" VALUES (238, 'United Arab Emirates', 'AE');
INSERT INTO public."Countries" VALUES (239, 'United Kingdom of Great Britain and Northern Ireland', 'GB');
INSERT INTO public."Countries" VALUES (240, 'United States of America', 'US');
INSERT INTO public."Countries" VALUES (241, 'United States Minor Outlying Islands', 'UM');
INSERT INTO public."Countries" VALUES (242, 'Uruguay', 'UY');
INSERT INTO public."Countries" VALUES (243, 'Uzbekistan', 'UZ');
INSERT INTO public."Countries" VALUES (244, 'Vanuatu', 'VU');
INSERT INTO public."Countries" VALUES (245, 'Venezuela (Bolivarian Republic of)', 'VE');
INSERT INTO public."Countries" VALUES (246, 'Viet Nam', 'VN');
INSERT INTO public."Countries" VALUES (247, 'Virgin Islands (British)', 'VG');
INSERT INTO public."Countries" VALUES (248, 'Virgin Islands (U.S.)', 'VI');
INSERT INTO public."Countries" VALUES (249, 'Wallis and Futuna', 'WF');
INSERT INTO public."Countries" VALUES (250, 'Western Sahara', 'EH');
INSERT INTO public."Countries" VALUES (251, 'Yemen', 'YE');
INSERT INTO public."Countries" VALUES (252, 'Zambia', 'ZM');
INSERT INTO public."Countries" VALUES (253, 'Zimbabwe', 'ZW');


--
-- TOC entry 4882 (class 0 OID 16520)
-- Dependencies: 221
-- Data for Name: Document_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Document_Types" VALUES (1, 'Id');
INSERT INTO public."Document_Types" VALUES (2, 'Passport');


--
-- TOC entry 4884 (class 0 OID 16524)
-- Dependencies: 223
-- Data for Name: EducationalInstitutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."EducationalInstitutions" VALUES (1, 'ORT');
INSERT INTO public."EducationalInstitutions" VALUES (2, 'MIT');
INSERT INTO public."EducationalInstitutions" VALUES (3, 'UBA');
INSERT INTO public."EducationalInstitutions" VALUES (4, 'UTN Universidad TEcnologica');
INSERT INTO public."EducationalInstitutions" VALUES (5, 'Universidad de Buenos Aires (UBA)');
INSERT INTO public."EducationalInstitutions" VALUES (6, 'Universidad Nacional de Córdoba (UNC)');
INSERT INTO public."EducationalInstitutions" VALUES (7, 'Universidad Nacional de La Plata (UNLP)');
INSERT INTO public."EducationalInstitutions" VALUES (8, 'Universidad Nacional de Rosario (UNR)');
INSERT INTO public."EducationalInstitutions" VALUES (9, 'Universidad Nacional de Tucumán (UNT)');
INSERT INTO public."EducationalInstitutions" VALUES (10, 'Universidad Nacional de Mar del Plata (UNMDP)');
INSERT INTO public."EducationalInstitutions" VALUES (11, 'Universidad Nacional del Litoral (UNL)');
INSERT INTO public."EducationalInstitutions" VALUES (12, 'Universidad Nacional de San Juan (UNSJ)');
INSERT INTO public."EducationalInstitutions" VALUES (13, 'Universidad Nacional del Sur (UNS)');
INSERT INTO public."EducationalInstitutions" VALUES (14, 'Universidad Nacional del Centro de la Provincia de Buenos Aires (UNICEN)');
INSERT INTO public."EducationalInstitutions" VALUES (15, 'Universidad Nacional de Salta (UNSa)');
INSERT INTO public."EducationalInstitutions" VALUES (16, 'Universidad Nacional de Misiones (UNaM)');
INSERT INTO public."EducationalInstitutions" VALUES (17, 'Universidad Nacional de Entre Ríos (UNER)');
INSERT INTO public."EducationalInstitutions" VALUES (18, 'Universidad Nacional de Cuyo (UNCuyo)');
INSERT INTO public."EducationalInstitutions" VALUES (19, 'Universidad Nacional de San Luis (UNSL)');
INSERT INTO public."EducationalInstitutions" VALUES (20, 'Universidad Nacional de La Matanza (UNLaM)');
INSERT INTO public."EducationalInstitutions" VALUES (21, 'Universidad Nacional de Río Negro (UNRN)');
INSERT INTO public."EducationalInstitutions" VALUES (22, 'Universidad Nacional de Catamarca (UNCA)');
INSERT INTO public."EducationalInstitutions" VALUES (23, 'Universidad Nacional de Jujuy (UNJu)');
INSERT INTO public."EducationalInstitutions" VALUES (24, 'Universidad Nacional de Santiago del Estero (UNSE)');
INSERT INTO public."EducationalInstitutions" VALUES (25, 'Harvard University');
INSERT INTO public."EducationalInstitutions" VALUES (26, 'Stanford University');
INSERT INTO public."EducationalInstitutions" VALUES (27, 'Massachusetts Institute of Technology');
INSERT INTO public."EducationalInstitutions" VALUES (28, 'California Institute of Technology');
INSERT INTO public."EducationalInstitutions" VALUES (29, 'University of Oxford');
INSERT INTO public."EducationalInstitutions" VALUES (30, 'University of Cambridge');
INSERT INTO public."EducationalInstitutions" VALUES (31, 'ETH Zurich - Swiss Federal Institute of Technology');
INSERT INTO public."EducationalInstitutions" VALUES (32, 'University of California, Berkeley');
INSERT INTO public."EducationalInstitutions" VALUES (33, 'Princeton University');
INSERT INTO public."EducationalInstitutions" VALUES (34, 'University of Chicago');
INSERT INTO public."EducationalInstitutions" VALUES (35, 'Yale University');
INSERT INTO public."EducationalInstitutions" VALUES (36, 'Columbia University');
INSERT INTO public."EducationalInstitutions" VALUES (37, 'University of Michigan');
INSERT INTO public."EducationalInstitutions" VALUES (38, 'Johns Hopkins University');
INSERT INTO public."EducationalInstitutions" VALUES (39, 'University College London');
INSERT INTO public."EducationalInstitutions" VALUES (40, 'University of Toronto');
INSERT INTO public."EducationalInstitutions" VALUES (41, 'Cornell University');
INSERT INTO public."EducationalInstitutions" VALUES (42, 'University of Pennsylvania');
INSERT INTO public."EducationalInstitutions" VALUES (43, 'University of California, Los Angeles');
INSERT INTO public."EducationalInstitutions" VALUES (44, 'University of Tokyo');
INSERT INTO public."EducationalInstitutions" VALUES (45, 'Universidad Austral (UA)');
INSERT INTO public."EducationalInstitutions" VALUES (46, 'Universidad Torcuato Di Tella (UTDT)');
INSERT INTO public."EducationalInstitutions" VALUES (47, 'Universidad de Palermo (UP)');
INSERT INTO public."EducationalInstitutions" VALUES (48, 'Universidad de Belgrano (UB)');
INSERT INTO public."EducationalInstitutions" VALUES (49, 'Universidad del Salvador (USAL)');
INSERT INTO public."EducationalInstitutions" VALUES (50, 'Universidad Argentina de la Empresa (UADE)');
INSERT INTO public."EducationalInstitutions" VALUES (51, 'Universidad Católica Argentina (UCA)');
INSERT INTO public."EducationalInstitutions" VALUES (52, 'Universidad de Ciencias Empresariales y Sociales (UCES)');
INSERT INTO public."EducationalInstitutions" VALUES (53, 'Universidad Abierta Interamericana (UAI)');
INSERT INTO public."EducationalInstitutions" VALUES (54, 'Universidad de San Andrés (UdeSA)');
INSERT INTO public."EducationalInstitutions" VALUES (55, 'Universidad del CEMA (UCEMA)');
INSERT INTO public."EducationalInstitutions" VALUES (56, 'Universidad FASTA (UFASTA)');
INSERT INTO public."EducationalInstitutions" VALUES (57, 'Universidad de la Marina Mercante (UMM)');
INSERT INTO public."EducationalInstitutions" VALUES (58, 'Universidad Adventista del Plata (UAP)');
INSERT INTO public."EducationalInstitutions" VALUES (59, 'Universidad Blas Pascal (UBP)');
INSERT INTO public."EducationalInstitutions" VALUES (60, 'Universidad Nacional de las Artes (UNA)');
INSERT INTO public."EducationalInstitutions" VALUES (61, 'Universidad del Norte Santo Tomás de Aquino (UNSTA)');
INSERT INTO public."EducationalInstitutions" VALUES (62, 'Universidad del Cine (UCINE)');
INSERT INTO public."EducationalInstitutions" VALUES (63, 'Universidad del Museo Social Argentino (UMSA)');
INSERT INTO public."EducationalInstitutions" VALUES (64, 'Universidad del Este (UDE)');
INSERT INTO public."EducationalInstitutions" VALUES (65, 'Universidad del Aconcagua (UDA)');
INSERT INTO public."EducationalInstitutions" VALUES (66, 'Universidad de Morón (UM)');
INSERT INTO public."EducationalInstitutions" VALUES (67, 'Universidad del Salvador (USAL)');
INSERT INTO public."EducationalInstitutions" VALUES (68, 'Universidad del Museo Social Argentino (UMSA)');
INSERT INTO public."EducationalInstitutions" VALUES (69, 'Universidad del CEMA (UCEMA)');
INSERT INTO public."EducationalInstitutions" VALUES (70, 'Universidad Nacional de Hurlingham (UNAHUR)');
INSERT INTO public."EducationalInstitutions" VALUES (71, 'Universidad del Este (UDE)');
INSERT INTO public."EducationalInstitutions" VALUES (72, 'Universidad de Belgrano (UB)');
INSERT INTO public."EducationalInstitutions" VALUES (73, 'Universidad Adventista del Plata (UAP)');
INSERT INTO public."EducationalInstitutions" VALUES (74, 'Universidad Siglo 21 (US21)');
INSERT INTO public."EducationalInstitutions" VALUES (75, 'Universidad del Norte Santo Tomás de Aquino (UNSTA)');
INSERT INTO public."EducationalInstitutions" VALUES (76, 'Universidad FASTA (UFASTA)');
INSERT INTO public."EducationalInstitutions" VALUES (77, 'Universidad de Ciencias Empresariales y Sociales (UCES)');
INSERT INTO public."EducationalInstitutions" VALUES (78, 'Universidad Maimónides (UM)');
INSERT INTO public."EducationalInstitutions" VALUES (79, 'Universidad Blas Pascal (UBP)');
INSERT INTO public."EducationalInstitutions" VALUES (80, 'Universidad Abierta Interamericana (UAI)');
INSERT INTO public."EducationalInstitutions" VALUES (81, 'Universidad Argentina de la Empresa (UADE)');
INSERT INTO public."EducationalInstitutions" VALUES (82, 'Universidad de San Andrés (UdeSA)');
INSERT INTO public."EducationalInstitutions" VALUES (83, 'Universidad Nacional Tres de Febrero (UNTREF)');


--
-- TOC entry 4886 (class 0 OID 16528)
-- Dependencies: 225
-- Data for Name: EducationalStatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."EducationalStatus" VALUES (1, 'Abandoned');
INSERT INTO public."EducationalStatus" VALUES (2, 'Finalized');
INSERT INTO public."EducationalStatus" VALUES (3, 'In Progress');


--
-- TOC entry 4888 (class 0 OID 16532)
-- Dependencies: 227
-- Data for Name: Genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Genders" VALUES (1, 'Male');
INSERT INTO public."Genders" VALUES (2, 'Female');
INSERT INTO public."Genders" VALUES (3, 'I prefer not to say');
INSERT INTO public."Genders" VALUES (4, 'Other');


--
-- TOC entry 4896 (class 0 OID 16544)
-- Dependencies: 235
-- Data for Name: Matches_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4897 (class 0 OID 16547)
-- Dependencies: 236
-- Data for Name: Picker_Job; Type: TABLE DATA; Schema: public; Owner: postgres
--

--INSERTS PARA LOS QUE BUSCAN TRABAJO PICKER_JOB --

INSERT INTO public."Picker_Job" VALUES (2, 'Seeking for a engineer', 'full time, paid', 9, 14, '2024-06-14', NULL, NULL, NULL, NULL, 1);
INSERT INTO public."Picker_Job" VALUES (2, 'Seeking for a engineer', 'full time, paid', 9, 14, '2024-06-14', NULL, NULL, NULL, NULL, 2);
INSERT INTO public."Picker_Job" VALUES (11, 'Software Engineer Position', 'Looking for a skilled software engineer to develop web applications.',9 , 10, '2024-06-14', 25, 20, 60000, 11);
INSERT INTO public."Picker_Job" VALUES (12, 'Mechanical Engineer Role', 'Need a mechanical engineer to design and oversee manufacturing processes.', 9, 11, '2024-06-14', 30, 22, 55000, 12);
INSERT INTO public."Picker_Job" VALUES (3, 'Civil Engineer Job', 'Seeking a civil engineer for infrastructure projects.', 9 , 12, '2024-06-14', 35, 25, 70000, 3);
INSERT INTO public."Picker_Job" VALUES (4, 'Digital Marketing Specialist', 'We need a digital marketing specialist to manage online campaigns.', 28, 32, '2024-06-14', 40, 22, 50000, 4);
INSERT INTO public."Picker_Job" VALUES (5, 'Human Resources Manager', 'Looking for an HR manager to handle recruitment and employee relations.', 25, NULL, '2024-06-14', 45, 30, 75000, 5);
INSERT INTO public."Picker_Job" VALUES (6, 'Biomedical Engineer Opportunity', 'Hiring a biomedical engineer to work on medical device development.', 9, 16, '2024-06-14', 40, 28, 68000, 6);
INSERT INTO public."Picker_Job" VALUES (7, 'Psychiatrist Position', 'We are looking for a psychiatrist to join our mental health team.', 41, 49, '2024-06-14', 50, 30, 85000, 7);
INSERT INTO public."Picker_Job" VALUES (8, 'Operations Manager', 'Seeking an operations manager to oversee production processes.', 26, NULL, '2024-06-14', 45, 32, 72000, 8);
INSERT INTO public."Picker_Job" VALUES (9, 'Electrical Engineer Needed', 'Looking for an electrical engineer to work on power systems.', 9, 12, '2024-06-14', 38, 26, 64000, 9);
INSERT INTO public."Picker_Job" VALUES (10, 'Environmental Engineer Job', 'Hiring an environmental engineer to work on sustainability projects.', 9, 17, '2024-06-14', 35, 27, 67000, 10);



--
-- TOC entry 4899 (class 0 OID 16553)
-- Dependencies: 238
-- Data for Name: Pickers_Matches; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4905 (class 0 OID 16599)
-- Dependencies: 244
-- Data for Name: UserCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4900 (class 0 OID 16556)
-- Dependencies: 239
-- Data for Name: UserStudies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserStudies" VALUES (1, 1, 5, 2, 'Chemical Engineer');


--
-- TOC entry 4902 (class 0 OID 16560)
-- Dependencies: 241
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Users" VALUES ('Benicio', '2024-06-14', 1, 'Bursztyn', '2006-12-28', 1, 47699155, 'benyburs@gmail.com', 'benipolshu3', '123123', 'finances', 'Playing soccer and dancing', 'A nice job enviroment', 'Worked as a consultant in MB', 'Developed an app called Laburar', NULL, 1, 15);
INSERT INTO public."Users" VALUES ('Federico', '2024-06-14', 2, 'Bider', '2007-05-30', 1, 123123111, 'fedebider@gmail.com', 'edericopolshu3', '123123', NULL, NULL, NULL, NULL, NULL, NULL, 2, 15);
-- Inserciones en la tabla Users
INSERT INTO public."Users" VALUES ('Alice', '2024-06-14', 2, 'Smith', '1990-01-01', 2, 12345678, 'alice.smith@example.com', 'aliceuser', 'alicepass', 'engineering', 'Reading and traveling', 'Innovative work environment', 'Currently working as a software developer at TechCorp', 'Developed a project management tool', NULL, 11, 240);
INSERT INTO public."Users" VALUES ('Bob', '2024-06-14', 3, 'Johnson', '1985-02-02', 3, 23456789, 'bob.johnson@example.com', 'bobuser', 'bobpass', 'marketing', 'Hiking and photography', 'Collaborative team', 'Currently working as a marketing specialist at MarketCo', 'Led a successful ad campaign', NULL, 12, 240);
INSERT INTO public."Users" VALUES ('Carol', '2024-06-14', 4, 'Williams', '1988-03-03', 4, 34567890, 'carol.williams@example.com', 'caroluser', 'carolpass', 'finance', 'Cooking and painting', 'Supportive work culture', 'Currently working as a financial analyst at FinCorp', 'Implemented cost-saving measures', NULL, 3, 240 );
INSERT INTO public."Users" VALUES ('David', '2024-06-14', 5, 'Brown', '1992-04-04', 5, 45678901, 'david.brown@example.com', 'daviduser', 'davidpass', 'human resources', 'Cycling and music', 'Diverse workplace', 'Currently working as an HR manager at HR Solutions', 'Improved employee retention rates', NULL, 4, 240);
INSERT INTO public."Users" VALUES ('Eve', '2024-06-14', 6, 'Jones', '1995-05-05', 6, 56789012, 'eve.jones@example.com', 'eveuser', 'evepass', 'biomedical engineering', 'Swimming and gardening', 'Flexible working hours', 'Currently working as a biomedical engineer at BioTech', 'Developed a new medical device', NULL, 5, 240);
INSERT INTO public."Users" VALUES ('Frank', '2024-06-14', 7, 'Miller', '1983-06-06', 7, 67890123, 'frank.miller@example.com', 'frankuser', 'frankpass', 'medicine', 'Running and gaming', 'Cutting-edge technology', 'Currently working as a psychiatrist at HealthCare', 'Provided mental health support', NULL, 6, 240);
INSERT INTO public."Users" VALUES ('Grace', '2024-06-14', 8, 'Davis', '1986-07-07', 8, 78901234, 'grace.davis@example.com', 'graceuser', 'gracepass', 'operations management', 'Yoga and writing', 'Growth opportunities', 'Currently working as an operations manager at OpsPro', 'Streamlined operational processes', NULL, 7, 240);
INSERT INTO public."Users" VALUES ('Hank', '2024-06-14', 9, 'Garcia', '1991-08-08', 9, 89012345, 'hank.garcia@example.com', 'hankuser', 'hankpass', 'electrical engineering', 'Climbing and reading', 'Challenging projects', 'Currently working as an electrical engineer at PowerTech', 'Designed efficient power systems', NULL, 8, 240);
INSERT INTO public."Users" VALUES ('Ivy', '2024-06-14', 10, 'Martinez', '1987-09-09', 10, 90123456, 'ivy.martinez@example.com', 'ivyuser', 'ivypass', 'environmental engineering', 'Running and cooking', 'Sustainable practices', 'Currently working as an environmental engineer at GreenWorld', 'Led a sustainability project', NULL, 9, 240);
INSERT INTO public."Users" VALUES ('Jack', '2024-06-14', 11, 'Lee', '1984-10-10', 11, 101234567, 'jack.lee@example.com', 'jackuser', 'jackpass', 'civil engineering', 'Traveling and coding', 'Innovative solutions', 'Currently working as a civil engineer at BuildCo', 'Managed large-scale construction projects', NULL, 10, 240);
-- Nuevos usuarios que podrían suplir las necesidades de los trabajos publicados

-- Software Engineer Position
INSERT INTO public."Users" VALUES ('Michael', '2024-06-14', 1, 'Anderson', '1992-01-15', 12, 11112222, 'michael.anderson@example.com', 'michaeluser', 'michaelpass', 'software engineering', 'Coding and hiking', 'Innovative team', 'Experienced in full-stack development', 'Worked on several web applications', NULL, 13, 240);

-- Mechanical Engineer Role
INSERT INTO public."Users" VALUES ('Sarah', '2024-06-14', 2, 'Johnson', '1988-02-20', 13, 22223333, 'sarah.johnson@example.com', 'sarahuser', 'sarahpass', 'mechanical engineering', 'Reading and biking', 'Dynamic projects', 'Experienced in CAD and manufacturing', 'Led projects in automotive industry', NULL, 14, 240);

-- Civil Engineer Job
INSERT INTO public."Users" VALUES ('David', '2024-06-14', 1, 'Miller', '1985-03-25', 14, 33334444, 'david.miller@example.com', 'daviduser', 'davidpass', 'civil engineering', 'Traveling and photography', 'Challenging infrastructure projects', 'Worked on major city infrastructure', 'Managed large construction teams', NULL, 15, 240);

-- Digital Marketing Specialist
INSERT INTO public."Users" VALUES ('Emma', '2024-06-14', 2, 'Davis', '1990-04-30', 15, 44445555, 'emma.davis@example.com', 'emmauser', 'emmapass', 'digital marketing', 'Painting and blogging', 'Creative marketing campaigns', 'Specialized in SEO and social media', 'Increased online presence for brands', NULL, 16, 240);

-- Human Resources Manager
INSERT INTO public."Users" VALUES ('John', '2024-06-14', 1, 'Smith', '1987-05-10', 16, 55556666, 'john.smith@example.com', 'johnuser', 'johnpass', 'human resources', 'Running and cooking', 'Building effective teams', 'Improved employee engagement', 'Managed recruitment processes', NULL, 17, 240);

-- Biomedical Engineer Opportunity
INSERT INTO public."Users" VALUES ('Jessica', '2024-06-14', 2, 'Brown', '1993-06-15', 17, 66667777, 'jessica.brown@example.com', 'jessicauser', 'jessicapass', 'biomedical engineering', 'Gardening and dancing', 'Innovative medical devices', 'Worked on advanced prosthetics', 'Published research in medical journals', NULL, 18, 240);

-- Psychiatrist Position
INSERT INTO public."Users" VALUES ('Robert', '2024-06-14', 1, 'Taylor', '1980-07-20', 18, 77778888, 'robert.taylor@example.com', 'robertuser', 'robertpass', 'psychiatry', 'Reading and swimming', 'Providing mental health support', 'Experienced in clinical settings', 'Worked with diverse patient groups', NULL, 19, 240);

-- Operations Manager
INSERT INTO public."Users" VALUES ('Linda', '2024-06-14', 2, 'White', '1982-08-25', 19, 88889999, 'linda.white@example.com', 'lindauser', 'lindapass', 'operations management', 'Yoga and writing', 'Optimizing operations', 'Implemented lean manufacturing processes', 'Improved operational efficiency', NULL, 20, 240);

-- Electrical Engineer Needed
INSERT INTO public."Users" VALUES ('James', '2024-06-14', 1, 'Harris', '1984-09-30', 20, 99990000, 'james.harris@example.com', 'jamesuser', 'jamespass', 'electrical engineering', 'Cycling and coding', 'Designing power systems', 'Worked on renewable energy projects', 'Developed efficient power solutions', NULL, 21, 240);

-- Environmental Engineer Job
INSERT INTO public."Users" VALUES ('Anna', '2024-06-14', 2, 'Clark', '1986-10-05', 21, 10101010, 'anna.clark@example.com', 'annauser', 'annapass', 'environmental engineering', 'Running and painting', 'Sustainable engineering solutions', 'Led environmental impact studies', 'Implemented green technologies', NULL, 22, 240);



-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_Id_seq"', 51, true);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 218
-- Name: Corporations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Corporations_Id_seq"', 1, false);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 220
-- Name: Countries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Countries_Id_seq"', 253, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 222
-- Name: Document_Types_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Document_Types_Id_seq"', 2, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 224
-- Name: EducationalInstitutions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EducationalInstitutions_Id_seq"', 83, true);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 226
-- Name: EducationalStatus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EducationalStatus_Id_seq"', 3, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 228
-- Name: Genders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Genders_Id_seq"', 4, true);


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 229
-- Name: JobOffer_Category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Category_seq"', 1, false);


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 230
-- Name: JobOffer_City_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_City_seq"', 1, false);


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 231
-- Name: JobOffer_CompanySpecialization_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_CompanySpecialization_seq"', 1, false);


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 232
-- Name: JobOffer_Country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Country_seq"', 1, false);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 233
-- Name: JobOffer_Neighborhood_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Neighborhood_seq"', 1, false);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 234
-- Name: JobOffer_User_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_User_seq"', 1, false);


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 237
-- Name: Picker_Job_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Picker_Job_Id_seq"', 2, true);


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 243
-- Name: UserCategories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserCategories_Id_seq"', 1, false);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 240
-- Name: UserEducations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserEducations_Id_seq"', 1, false);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 242
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Id_seq"', 2, true);


--
-- TOC entry 4716 (class 2606 OID 16583)
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4718 (class 2606 OID 16585)
-- Name: Countries Countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4720 (class 2606 OID 16587)
-- Name: Document_Types Document_Types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types"
    ADD CONSTRAINT "Document_Types_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4722 (class 2606 OID 16589)
-- Name: EducationalInstitutions EducationalInstitutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions"
    ADD CONSTRAINT "EducationalInstitutions_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4724 (class 2606 OID 16591)
-- Name: EducationalStatus EducationalStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus"
    ADD CONSTRAINT "EducationalStatus_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4726 (class 2606 OID 16593)
-- Name: Genders Genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4732 (class 2606 OID 16604)
-- Name: UserCategories UserCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategories"
    ADD CONSTRAINT "UserCategories_pkey" PRIMARY KEY ("IdUser");


--
-- TOC entry 4728 (class 2606 OID 16595)
-- Name: UserStudies UserEducations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserStudies"
    ADD CONSTRAINT "UserEducations_pkey" PRIMARY KEY ("IdUser");


--
-- TOC entry 4730 (class 2606 OID 16597)
-- Name: Users User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");


-- Completed on 2024-07-05 11:22:19

--
-- PostgreSQL database dump complete
--