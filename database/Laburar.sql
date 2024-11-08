--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2024-11-08 11:02:49

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
-- TOC entry 215 (class 1259 OID 16527)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "IdParent" integer,
    image character varying
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16532)
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
-- TOC entry 217 (class 1259 OID 16533)
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
-- TOC entry 218 (class 1259 OID 16536)
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
-- TOC entry 219 (class 1259 OID 16537)
-- Name: Countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Countries" (
    "Id" integer NOT NULL,
    "Name" character varying(100),
    alpha_2 character varying(50)
);


ALTER TABLE public."Countries" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16540)
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
-- TOC entry 221 (class 1259 OID 16541)
-- Name: Document_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Document_Types" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."Document_Types" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16544)
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
-- TOC entry 223 (class 1259 OID 16545)
-- Name: EducationalInstitutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalInstitutions" (
    "Id" integer NOT NULL,
    "Name" character varying(150)
);


ALTER TABLE public."EducationalInstitutions" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16548)
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
-- TOC entry 225 (class 1259 OID 16549)
-- Name: EducationalStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalStatus" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."EducationalStatus" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16552)
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
-- TOC entry 227 (class 1259 OID 16553)
-- Name: Genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genders" (
    "Id" integer NOT NULL,
    "Name" text
);


ALTER TABLE public."Genders" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16558)
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
-- TOC entry 229 (class 1259 OID 16559)
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
-- TOC entry 230 (class 1259 OID 16560)
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
-- TOC entry 231 (class 1259 OID 16561)
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
-- TOC entry 232 (class 1259 OID 16562)
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
-- TOC entry 233 (class 1259 OID 16563)
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
-- TOC entry 234 (class 1259 OID 16564)
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
-- TOC entry 235 (class 1259 OID 16565)
-- Name: Matches_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Matches_Types" (
    "Id" integer,
    "Id_UserPicker" integer,
    "Id_UserPursuer" integer
);


ALTER TABLE public."Matches_Types" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16568)
-- Name: Picker_Job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Picker_Job" (
    "Id_User" integer,
    "Title" text,
    "Description" text,
    "Category" integer,
    "Sub_Category" integer,
    "Date_Created" date,
    "AgeMax" integer,
    "AgeMin" integer,
    "Salary" integer,
    "IdCorporation" integer,
    "Id" integer NOT NULL
);


ALTER TABLE public."Picker_Job" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16573)
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
-- TOC entry 238 (class 1259 OID 16574)
-- Name: Pickers_Matches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pickers_Matches" (
    "Id" integer,
    "Id_Job" integer,
    "Id_User" integer,
    "Match_Type" integer
);


ALTER TABLE public."Pickers_Matches" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16577)
-- Name: UserCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserCategories" (
    "Id" integer NOT NULL,
    "IdUser" integer NOT NULL,
    "IdCategory" integer
);


ALTER TABLE public."UserCategories" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16580)
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
-- Dependencies: 240
-- Name: UserCategories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserCategories_Id_seq" OWNED BY public."UserCategories"."Id";


--
-- TOC entry 241 (class 1259 OID 16581)
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
-- TOC entry 242 (class 1259 OID 16584)
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
-- Dependencies: 242
-- Name: UserEducations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserEducations_Id_seq" OWNED BY public."UserStudies"."Id";


--
-- TOC entry 243 (class 1259 OID 16585)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Name" text,
    "Creation_Date" date,
    "Document_Type" integer,
    "Surname" text,
    "Birthdate" date,
    "Gender" integer,
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
-- TOC entry 244 (class 1259 OID 16590)
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
-- Dependencies: 244
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 4698 (class 2604 OID 16591)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 4699 (class 2604 OID 16592)
-- Name: Corporations User; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "User" SET DEFAULT nextval('public."JobOffer_User_seq"'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16593)
-- Name: Corporations CompanySpecialization; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "CompanySpecialization" SET DEFAULT nextval('public."JobOffer_CompanySpecialization_seq"'::regclass);


--
-- TOC entry 4701 (class 2604 OID 16594)
-- Name: Corporations Country; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Country" SET DEFAULT nextval('public."JobOffer_Country_seq"'::regclass);


--
-- TOC entry 4702 (class 2604 OID 16595)
-- Name: Corporations City; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "City" SET DEFAULT nextval('public."JobOffer_City_seq"'::regclass);


--
-- TOC entry 4703 (class 2604 OID 16596)
-- Name: Corporations Neighborhood; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Neighborhood" SET DEFAULT nextval('public."JobOffer_Neighborhood_seq"'::regclass);


--
-- TOC entry 4704 (class 2604 OID 16597)
-- Name: Corporations JobOfferCategory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "JobOfferCategory" SET DEFAULT nextval('public."JobOffer_Category_seq"'::regclass);


--
-- TOC entry 4705 (class 2604 OID 16598)
-- Name: Corporations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Corporations_Id_seq"'::regclass);


--
-- TOC entry 4706 (class 2604 OID 16599)
-- Name: Countries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Countries_Id_seq"'::regclass);


--
-- TOC entry 4707 (class 2604 OID 16600)
-- Name: Document_Types Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types" ALTER COLUMN "Id" SET DEFAULT nextval('public."Document_Types_Id_seq"'::regclass);


--
-- TOC entry 4708 (class 2604 OID 16601)
-- Name: EducationalInstitutions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalInstitutions_Id_seq"'::regclass);


--
-- TOC entry 4709 (class 2604 OID 16602)
-- Name: EducationalStatus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalStatus_Id_seq"'::regclass);


--
-- TOC entry 4710 (class 2604 OID 16603)
-- Name: Genders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Genders_Id_seq"'::regclass);


--
-- TOC entry 4711 (class 2604 OID 16604)
-- Name: Picker_Job Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Picker_Job" ALTER COLUMN "Id" SET DEFAULT nextval('public."Picker_Job_Id_seq"'::regclass);


--
-- TOC entry 4712 (class 2604 OID 16605)
-- Name: UserCategories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategories" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserCategories_Id_seq"'::regclass);


--
-- TOC entry 4713 (class 2604 OID 16606)
-- Name: UserStudies Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserStudies" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserEducations_Id_seq"'::regclass);


--
-- TOC entry 4714 (class 2604 OID 16607)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."User_Id_seq"'::regclass);


--
-- TOC entry 4876 (class 0 OID 16527)
-- Dependencies: 215
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categories" ("Id", "Name", "IdParent", image) FROM stdin;
1	Programmer	\N	\N
2	Scientist	\N	\N
3	Web Developer	1	\N
4	BackEnd Developer	1	\N
5	Junior	4	\N
6	Sr.	4	\N
7	Semi Sr.	4	\N
9	Engineer	\N	\N
10	Civil Engineer	9	\N
11	Mechanical Engineer	9	\N
12	Electrical Engineer	9	\N
13	Software Engineer	9	\N
14	Chemical Engineer	9	\N
15	Aeronautical Engineer	9	\N
16	Biomedical Engineer	9	\N
17	Environmental Engineer	9	\N
18	Industrial Engineer	9	\N
19	Petroleum Engineer	9	\N
20	Systems Engineer	9	\N
21	Computer Engineer	9	\N
22	Industrial Engineer	9	\N
23	Business Administration	\N	\N
24	Finance	\N	\N
25	Human Resources	\N	\N
26	Operations Management	\N	\N
27	Strategic Management	\N	\N
28	Marketing	\N	\N
29	Digital Marketing	\N	\N
30	Market Research	\N	\N
31	Brand Management	\N	\N
32	Social Media Marketing	\N	\N
33	Psychology	\N	\N
34	Clinical Psychology	\N	\N
35	Counseling Psychology	\N	\N
36	Educational Psychology	\N	\N
37	Industrial-Organizational Psychology	\N	\N
38	Neuropsychology	\N	\N
39	Sports Psychology	\N	\N
40	Vocational Guidance	\N	\N
41	Medical	\N	\N
42	Cardiologist	41	\N
43	Dermatologist	41	\N
44	Endocrinologist	41	\N
45	Gastroenterologist	41	\N
46	Neurologist	41	\N
47	Orthopedic Surgeon	41	\N
48	Pediatrician	41	\N
49	Psychiatrist	41	\N
50	Radiologist	41	\N
51	Urologist	41	\N
\.


--
-- TOC entry 4878 (class 0 OID 16533)
-- Dependencies: 217
-- Data for Name: Corporations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Corporations" ("User", "CorporationName", "CompanySpecialization", "Country", "City", "Neighborhood", "JobOfferCategory", "Id") FROM stdin;
\.


--
-- TOC entry 4880 (class 0 OID 16537)
-- Dependencies: 219
-- Data for Name: Countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Countries" ("Id", "Name", alpha_2) FROM stdin;
5	Afghanistan	AF
6	Åland Islands	AX
7	Albania	AL
8	Algeria	DZ
9	American Samoa	AS
10	Andorra	AD
11	Angola	AO
12	Anguilla	AI
13	Antarctica	AQ
14	Antigua and Barbuda	AG
15	Argentina	AR
16	Armenia	AM
17	Aruba	AW
18	Australia	AU
19	Austria	AT
20	Azerbaijan	AZ
21	Bahamas	BS
22	Bahrain	BH
23	Bangladesh	BD
24	Barbados	BB
25	Belarus	BY
26	Belgium	BE
27	Belize	BZ
28	Benin	BJ
29	Bermuda	BM
30	Bhutan	BT
31	Bolivia (Plurinational State of)	BO
32	Bonaire, Sint Eustatius and Saba	BQ
33	Bosnia and Herzegovina	BA
34	Botswana	BW
35	Bouvet Island	BV
36	Brazil	BR
37	British Indian Ocean Territory	IO
38	Brunei Darussalam	BN
39	Bulgaria	BG
40	Burkina Faso	BF
41	Burundi	BI
42	Cabo Verde	CV
43	Cambodia	KH
44	Cameroon	CM
45	Canada	CA
46	Cayman Islands	KY
47	Central African Republic	CF
48	Chad	TD
49	Chile	CL
50	China	CN
51	Christmas Island	CX
52	Cocos (Keeling) Islands	CC
53	Colombia	CO
54	Comoros	KM
55	Congo	CG
56	Congo, Democratic Republic of the	CD
57	Cook Islands	CK
58	Costa Rica	CR
59	Côte dIvoire	CI
60	Croatia	HR
61	Cuba	CU
62	Curaçao	CW
63	Cyprus	CY
64	Czechia	CZ
65	Denmark	DK
66	Djibouti	DJ
67	Dominica	DM
68	Dominican Republic	DO
69	Ecuador	EC
70	Egypt	EG
71	El Salvador	SV
72	Equatorial Guinea	GQ
73	Eritrea	ER
74	Estonia	EE
75	Eswatini	SZ
76	Ethiopia	ET
77	Falkland Islands (Malvinas)	FK
78	Faroe Islands	FO
79	Fiji	FJ
80	Finland	FI
81	France	FR
82	French Guiana	GF
83	French Polynesia	PF
84	French Southern Territories	TF
85	Gabon	GA
86	Gambia	GM
87	Georgia	GE
88	Germany	DE
89	Ghana	GH
90	Gibraltar	GI
91	Greece	GR
92	Greenland	GL
93	Grenada	GD
94	Guadeloupe	GP
95	Guam	GU
96	Guatemala	GT
97	Guernsey	GG
98	Guinea	GN
99	Guinea-Bissau	GW
100	Guyana	GY
101	Haiti	HT
102	Heard Island and McDonald Islands	HM
103	Holy See	VA
104	Honduras	HN
105	Hong Kong	HK
106	Hungary	HU
107	Iceland	IS
108	India	IN
109	Indonesia	ID
110	Iran (Islamic Republic of)	IR
111	Iraq	IQ
112	Ireland	IE
113	Isle of Man	IM
114	Israel	IL
115	Italy	IT
116	Jamaica	JM
117	Japan	JP
118	Jersey	JE
119	Jordan	JO
120	Kazakhstan	KZ
121	Kenya	KE
122	Kiribati	KI
123	Korea (Democratic Peoples Republic of)	KP
124	Korea, Republic of	KR
125	Kuwait	KW
126	Kyrgyzstan	KG
127	Lao Peoples Democratic Republic	LA
128	Latvia	LV
129	Lebanon	LB
130	Lesotho	LS
131	Liberia	LR
132	Libya	LY
133	Liechtenstein	LI
134	Lithuania	LT
135	Luxembourg	LU
136	Macao	MO
137	Madagascar	MG
138	Malawi	MW
139	Malaysia	MY
140	Maldives	MV
141	Mali	ML
142	Malta	MT
143	Marshall Islands	MH
144	Martinique	MQ
145	Mauritania	MR
146	Mauritius	MU
147	Mayotte	YT
148	Mexico	MX
149	Micronesia (Federated States of)	FM
150	Moldova, Republic of	MD
151	Monaco	MC
152	Mongolia	MN
153	Montenegro	ME
154	Montserrat	MS
155	Morocco	MA
156	Mozambique	MZ
157	Myanmar	MM
158	Namibia	NA
159	Nauru	NR
160	Nepal	NP
161	Netherlands	NL
162	New Caledonia	NC
163	New Zealand	NZ
164	Nicaragua	NI
165	Niger	NE
166	Nigeria	NG
167	Niue	NU
168	Norfolk Island	NF
169	North Macedonia	MK
170	Northern Mariana Islands	MP
171	Norway	NO
172	Oman	OM
173	Pakistan	PK
174	Palau	PW
175	Palestine, State of	PS
176	Panama	PA
177	Papua New Guinea	PG
178	Paraguay	PY
179	Peru	PE
180	Philippines	PH
181	Pitcairn	PN
182	Poland	PL
183	Portugal	PT
184	Puerto Rico	PR
185	Qatar	QA
186	Réunion	RE
187	Romania	RO
188	Russian Federation	RU
189	Rwanda	RW
190	Saint Barthélemy	BL
191	Saint Helena, Ascension and Tristan da Cunha	SH
192	Saint Kitts and Nevis	KN
193	Saint Lucia	LC
194	Saint Martin (French part)	MF
195	Saint Pierre and Miquelon	PM
196	Saint Vincent and the Grenadines	VC
197	Samoa	WS
198	San Marino	SM
199	Sao Tome and Principe	ST
200	Saudi Arabia	SA
201	Senegal	SN
202	Serbia	RS
203	Seychelles	SC
204	Sierra Leone	SL
205	Singapore	SG
206	Sint Maarten (Dutch part)	SX
207	Slovakia	SK
208	Slovenia	SI
209	Solomon Islands	SB
210	Somalia	SO
211	South Africa	ZA
212	South Georgia and the South Sandwich Islands	GS
213	South Sudan	SS
214	Spain	ES
215	Sri Lanka	LK
216	Sudan	SD
217	Suriname	SR
218	Svalbard and Jan Mayen	SJ
219	Sweden	SE
220	Switzerland	CH
221	Syrian Arab Republic	SY
222	Taiwan, Province of China[a]	TW
223	Tajikistan	TJ
224	Tanzania, United Republic of	TZ
225	Thailand	TH
226	Timor-Leste	TL
227	Togo	TG
228	Tokelau	TK
229	Tonga	TO
230	Trinidad and Tobago	TT
231	Tunisia	TN
232	Turkey	TR
233	Turkmenistan	TM
234	Turks and Caicos Islands	TC
235	Tuvalu	TV
236	Uganda	UG
237	Ukraine	UA
238	United Arab Emirates	AE
239	United Kingdom of Great Britain and Northern Ireland	GB
240	United States of America	US
241	United States Minor Outlying Islands	UM
242	Uruguay	UY
243	Uzbekistan	UZ
244	Vanuatu	VU
245	Venezuela (Bolivarian Republic of)	VE
246	Viet Nam	VN
247	Virgin Islands (British)	VG
248	Virgin Islands (U.S.)	VI
249	Wallis and Futuna	WF
250	Western Sahara	EH
251	Yemen	YE
252	Zambia	ZM
253	Zimbabwe	ZW
\.


--
-- TOC entry 4882 (class 0 OID 16541)
-- Dependencies: 221
-- Data for Name: Document_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Document_Types" ("Id", "Name") FROM stdin;
1	Id
2	Passport
\.


--
-- TOC entry 4884 (class 0 OID 16545)
-- Dependencies: 223
-- Data for Name: EducationalInstitutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EducationalInstitutions" ("Id", "Name") FROM stdin;
1	ORT
2	MIT
3	UBA
4	UTN Universidad TEcnologica
5	Universidad de Buenos Aires (UBA)
6	Universidad Nacional de Córdoba (UNC)
7	Universidad Nacional de La Plata (UNLP)
8	Universidad Nacional de Rosario (UNR)
9	Universidad Nacional de Tucumán (UNT)
10	Universidad Nacional de Mar del Plata (UNMDP)
11	Universidad Nacional del Litoral (UNL)
12	Universidad Nacional de San Juan (UNSJ)
13	Universidad Nacional del Sur (UNS)
14	Universidad Nacional del Centro de la Provincia de Buenos Aires (UNICEN)
15	Universidad Nacional de Salta (UNSa)
16	Universidad Nacional de Misiones (UNaM)
17	Universidad Nacional de Entre Ríos (UNER)
18	Universidad Nacional de Cuyo (UNCuyo)
19	Universidad Nacional de San Luis (UNSL)
20	Universidad Nacional de La Matanza (UNLaM)
21	Universidad Nacional de Río Negro (UNRN)
22	Universidad Nacional de Catamarca (UNCA)
23	Universidad Nacional de Jujuy (UNJu)
24	Universidad Nacional de Santiago del Estero (UNSE)
25	Harvard University
26	Stanford University
27	Massachusetts Institute of Technology
28	California Institute of Technology
29	University of Oxford
30	University of Cambridge
31	ETH Zurich - Swiss Federal Institute of Technology
32	University of California, Berkeley
33	Princeton University
34	University of Chicago
35	Yale University
36	Columbia University
37	University of Michigan
38	Johns Hopkins University
39	University College London
40	University of Toronto
41	Cornell University
42	University of Pennsylvania
43	University of California, Los Angeles
44	University of Tokyo
45	Universidad Austral (UA)
46	Universidad Torcuato Di Tella (UTDT)
47	Universidad de Palermo (UP)
48	Universidad de Belgrano (UB)
49	Universidad del Salvador (USAL)
50	Universidad Argentina de la Empresa (UADE)
51	Universidad Católica Argentina (UCA)
52	Universidad de Ciencias Empresariales y Sociales (UCES)
53	Universidad Abierta Interamericana (UAI)
54	Universidad de San Andrés (UdeSA)
55	Universidad del CEMA (UCEMA)
56	Universidad FASTA (UFASTA)
57	Universidad de la Marina Mercante (UMM)
58	Universidad Adventista del Plata (UAP)
59	Universidad Blas Pascal (UBP)
60	Universidad Nacional de las Artes (UNA)
61	Universidad del Norte Santo Tomás de Aquino (UNSTA)
62	Universidad del Cine (UCINE)
63	Universidad del Museo Social Argentino (UMSA)
64	Universidad del Este (UDE)
65	Universidad del Aconcagua (UDA)
66	Universidad de Morón (UM)
67	Universidad del Salvador (USAL)
68	Universidad del Museo Social Argentino (UMSA)
69	Universidad del CEMA (UCEMA)
70	Universidad Nacional de Hurlingham (UNAHUR)
71	Universidad del Este (UDE)
72	Universidad de Belgrano (UB)
73	Universidad Adventista del Plata (UAP)
74	Universidad Siglo 21 (US21)
75	Universidad del Norte Santo Tomás de Aquino (UNSTA)
76	Universidad FASTA (UFASTA)
77	Universidad de Ciencias Empresariales y Sociales (UCES)
78	Universidad Maimónides (UM)
79	Universidad Blas Pascal (UBP)
80	Universidad Abierta Interamericana (UAI)
81	Universidad Argentina de la Empresa (UADE)
82	Universidad de San Andrés (UdeSA)
83	Universidad Nacional Tres de Febrero (UNTREF)
\.


--
-- TOC entry 4886 (class 0 OID 16549)
-- Dependencies: 225
-- Data for Name: EducationalStatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EducationalStatus" ("Id", "Name") FROM stdin;
1	Abandoned
2	Finalized
3	In Progress
\.


--
-- TOC entry 4888 (class 0 OID 16553)
-- Dependencies: 227
-- Data for Name: Genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Genders" ("Id", "Name") FROM stdin;
1	Male
2	Female
3	I prefer not to say
4	Other
\.


--
-- TOC entry 4896 (class 0 OID 16565)
-- Dependencies: 235
-- Data for Name: Matches_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Matches_Types" ("Id", "Id_UserPicker", "Id_UserPursuer") FROM stdin;
\.


--
-- TOC entry 4897 (class 0 OID 16568)
-- Dependencies: 236
-- Data for Name: Picker_Job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Picker_Job" ("Id_User", "Title", "Description", "Category", "Sub_Category", "Date_Created", "AgeMax", "AgeMin", "Salary", "IdCorporation", "Id") FROM stdin;
2	Seeking for a engineer	full time, paid	9	14	2024-06-14	\N	\N	\N	\N	1
2	Seeking for a engineer	full time, paid	9	14	2024-06-14	\N	\N	\N	\N	2
11	Software Engineer Position	Looking for a skilled software engineer to develop web applications.	9	10	2024-06-14	25	20	60000	11	1
12	Mechanical Engineer Role	Need a mechanical engineer to design and oversee manufacturing processes.	9	11	2024-06-14	30	22	55000	12	2
3	Civil Engineer Job	Seeking a civil engineer for infrastructure projects.	9	12	2024-06-14	35	25	70000	3	3
4	Digital Marketing Specialist	We need a digital marketing specialist to manage online campaigns.	28	32	2024-06-14	40	22	50000	4	4
5	Human Resources Manager	Looking for an HR manager to handle recruitment and employee relations.	25	\N	2024-06-14	45	30	75000	5	5
6	Biomedical Engineer Opportunity	Hiring a biomedical engineer to work on medical device development.	9	16	2024-06-14	40	28	68000	6	6
7	Psychiatrist Position	We are looking for a psychiatrist to join our mental health team.	41	49	2024-06-14	50	30	85000	7	7
8	Operations Manager	Seeking an operations manager to oversee production processes.	26	\N	2024-06-14	45	32	72000	8	8
9	Electrical Engineer Needed	Looking for an electrical engineer to work on power systems.	9	12	2024-06-14	38	26	64000	9	9
10	Environmental Engineer Job	Hiring an environmental engineer to work on sustainability projects.	9	17	2024-06-14	35	27	67000	10	10
\.


--
-- TOC entry 4899 (class 0 OID 16574)
-- Dependencies: 238
-- Data for Name: Pickers_Matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pickers_Matches" ("Id", "Id_Job", "Id_User", "Match_Type") FROM stdin;
\.


--
-- TOC entry 4900 (class 0 OID 16577)
-- Dependencies: 239
-- Data for Name: UserCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserCategories" ("Id", "IdUser", "IdCategory") FROM stdin;
1	11	9
\.


--
-- TOC entry 4902 (class 0 OID 16581)
-- Dependencies: 241
-- Data for Name: UserStudies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserStudies" ("Id", "IdUser", "IdEducationalInstitution", "IdEducationalStatus", "Major") FROM stdin;
1	1	5	2	Chemical Engineer
\.


--
-- TOC entry 4904 (class 0 OID 16585)
-- Dependencies: 243
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" ("Name", "Creation_Date", "Document_Type", "Surname", "Birthdate", "Gender", "Document_Number", "Email", "Password", "Phone", "Passion", "Hobbies", "Seeking", "Experience1", "Experience2", "Experience3", "Id", "Country") FROM stdin;
Benicio	2024-06-14	1	Bursztyn	2006-12-28	1	47699155	benyburs@gmail.com	benipolshu3	123123	finances	Playing soccer and dancing	A nice job enviroment	Worked as a consultant in MB	Developed an app called Laburar	\N	1	15
Federico	2024-06-14	2	Bider	2007-05-30	1	123123111	fedebider@gmail.com	edericopolshu3	123123	\N	\N	\N	\N	\N	\N	2	15
Alice	2024-06-14	2	Smith	1990-01-01	2	12345678	alice.smith@example.com	aliceuser	alicepass	engineering	Reading and traveling	Innovative work environment	Currently working as a software developer at TechCorp	Developed a project management tool	\N	11	240
Bob	2024-06-14	3	Johnson	1985-02-02	3	23456789	bob.johnson@example.com	bobuser	bobpass	marketing	Hiking and photography	Collaborative team	Currently working as a marketing specialist at MarketCo	Led a successful ad campaign	\N	12	240
Carol	2024-06-14	4	Williams	1988-03-03	4	34567890	carol.williams@example.com	caroluser	carolpass	finance	Cooking and painting	Supportive work culture	Currently working as a financial analyst at FinCorp	Implemented cost-saving measures	\N	3	240
David	2024-06-14	5	Brown	1992-04-04	5	45678901	david.brown@example.com	daviduser	davidpass	human resources	Cycling and music	Diverse workplace	Currently working as an HR manager at HR Solutions	Improved employee retention rates	\N	4	240
Eve	2024-06-14	6	Jones	1995-05-05	6	56789012	eve.jones@example.com	eveuser	evepass	biomedical engineering	Swimming and gardening	Flexible working hours	Currently working as a biomedical engineer at BioTech	Developed a new medical device	\N	5	240
Frank	2024-06-14	7	Miller	1983-06-06	7	67890123	frank.miller@example.com	frankuser	frankpass	medicine	Running and gaming	Cutting-edge technology	Currently working as a psychiatrist at HealthCare	Provided mental health support	\N	6	240
Grace	2024-06-14	8	Davis	1986-07-07	8	78901234	grace.davis@example.com	graceuser	gracepass	operations management	Yoga and writing	Growth opportunities	Currently working as an operations manager at OpsPro	Streamlined operational processes	\N	7	240
Hank	2024-06-14	9	Garcia	1991-08-08	9	89012345	hank.garcia@example.com	hankuser	hankpass	electrical engineering	Climbing and reading	Challenging projects	Currently working as an electrical engineer at PowerTech	Designed efficient power systems	\N	8	240
Ivy	2024-06-14	10	Martinez	1987-09-09	10	90123456	ivy.martinez@example.com	ivyuser	ivypass	environmental engineering	Running and cooking	Sustainable practices	Currently working as an environmental engineer at GreenWorld	Led a sustainability project	\N	9	240
Jack	2024-06-14	11	Lee	1984-10-10	11	101234567	jack.lee@example.com	jackuser	jackpass	civil engineering	Traveling and coding	Innovative solutions	Currently working as a civil engineer at BuildCo	Managed large-scale construction projects	\N	10	240
Michael	2024-06-14	1	Anderson	1992-01-15	12	11112222	michael.anderson@example.com	michaeluser	michaelpass	software engineering	Coding and hiking	Innovative team	Experienced in full-stack development	Worked on several web applications	\N	13	240
Sarah	2024-06-14	2	Johnson	1988-02-20	13	22223333	sarah.johnson@example.com	sarahuser	sarahpass	mechanical engineering	Reading and biking	Dynamic projects	Experienced in CAD and manufacturing	Led projects in automotive industry	\N	14	240
David	2024-06-14	1	Miller	1985-03-25	14	33334444	david.miller@example.com	daviduser	davidpass	civil engineering	Traveling and photography	Challenging infrastructure projects	Worked on major city infrastructure	Managed large construction teams	\N	15	240
Emma	2024-06-14	2	Davis	1990-04-30	15	44445555	emma.davis@example.com	emmauser	emmapass	digital marketing	Painting and blogging	Creative marketing campaigns	Specialized in SEO and social media	Increased online presence for brands	\N	16	240
John	2024-06-14	1	Smith	1987-05-10	16	55556666	john.smith@example.com	johnuser	johnpass	human resources	Running and cooking	Building effective teams	Improved employee engagement	Managed recruitment processes	\N	17	240
Jessica	2024-06-14	2	Brown	1993-06-15	17	66667777	jessica.brown@example.com	jessicauser	jessicapass	biomedical engineering	Gardening and dancing	Innovative medical devices	Worked on advanced prosthetics	Published research in medical journals	\N	18	240
Robert	2024-06-14	1	Taylor	1980-07-20	18	77778888	robert.taylor@example.com	robertuser	robertpass	psychiatry	Reading and swimming	Providing mental health support	Experienced in clinical settings	Worked with diverse patient groups	\N	19	240
Linda	2024-06-14	2	White	1982-08-25	19	88889999	linda.white@example.com	lindauser	lindapass	operations management	Yoga and writing	Optimizing operations	Implemented lean manufacturing processes	Improved operational efficiency	\N	20	240
James	2024-06-14	1	Harris	1984-09-30	20	99990000	james.harris@example.com	jamesuser	jamespass	electrical engineering	Cycling and coding	Designing power systems	Worked on renewable energy projects	Developed efficient power solutions	\N	21	240
Anna	2024-06-14	2	Clark	1986-10-05	21	10101010	anna.clark@example.com	annauser	annapass	environmental engineering	Running and painting	Sustainable engineering solutions	Led environmental impact studies	Implemented green technologies	\N	22	240
\.


--
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
-- Dependencies: 240
-- Name: UserCategories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserCategories_Id_seq"', 1, false);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 242
-- Name: UserEducations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserEducations_Id_seq"', 1, false);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 244
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Id_seq"', 4, true);


--
-- TOC entry 4716 (class 2606 OID 16609)
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4718 (class 2606 OID 16611)
-- Name: Countries Countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4720 (class 2606 OID 16613)
-- Name: Document_Types Document_Types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types"
    ADD CONSTRAINT "Document_Types_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4722 (class 2606 OID 16615)
-- Name: EducationalInstitutions EducationalInstitutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions"
    ADD CONSTRAINT "EducationalInstitutions_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4724 (class 2606 OID 16617)
-- Name: EducationalStatus EducationalStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus"
    ADD CONSTRAINT "EducationalStatus_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4726 (class 2606 OID 16619)
-- Name: Genders Genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4728 (class 2606 OID 16621)
-- Name: UserCategories UserCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategories"
    ADD CONSTRAINT "UserCategories_pkey" PRIMARY KEY ("IdUser");


--
-- TOC entry 4730 (class 2606 OID 16623)
-- Name: UserStudies UserEducations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserStudies"
    ADD CONSTRAINT "UserEducations_pkey" PRIMARY KEY ("IdUser");


--
-- TOC entry 4732 (class 2606 OID 16625)
-- Name: Users User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");


-- Completed on 2024-11-08 11:02:49

--
-- PostgreSQL database dump complete
--

