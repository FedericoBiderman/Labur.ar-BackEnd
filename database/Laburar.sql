--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2024-06-07 10:02:52

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "Name" character varying NOT NULL,
    "IdParent" integer
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16404)
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
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_Id_seq" OWNED BY public."Categories"."Id";


--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: Countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Countries" (
    "Id" integer NOT NULL,
    "Name" character varying(100),
    alpha_2 character varying(50)
);


ALTER TABLE public."Countries" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16408)
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
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 218
-- Name: Countries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Countries_Id_seq" OWNED BY public."Countries"."Id";


--
-- TOC entry 219 (class 1259 OID 16409)
-- Name: Document_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Document_Types" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."Document_Types" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16412)
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
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 220
-- Name: Document_Types_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Document_Types_Id_seq" OWNED BY public."Document_Types"."Id";


--
-- TOC entry 221 (class 1259 OID 16413)
-- Name: EducationalInstitutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalInstitutions" (
    "Id" integer NOT NULL,
    "Name" character varying(150)
);


ALTER TABLE public."EducationalInstitutions" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16416)
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
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 222
-- Name: EducationalInstitutions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EducationalInstitutions_Id_seq" OWNED BY public."EducationalInstitutions"."Id";


--
-- TOC entry 223 (class 1259 OID 16417)
-- Name: EducationalStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EducationalStatus" (
    "Id" integer NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."EducationalStatus" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16420)
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
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 224
-- Name: EducationalStatus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EducationalStatus_Id_seq" OWNED BY public."EducationalStatus"."Id";


--
-- TOC entry 225 (class 1259 OID 16421)
-- Name: Genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genders" (
    "Id" integer NOT NULL,
    "Name" text
);


ALTER TABLE public."Genders" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16426)
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
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 226
-- Name: Genders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Genders_Id_seq" OWNED BY public."Genders"."Id";


--
-- TOC entry 227 (class 1259 OID 16427)
-- Name: JobOffer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."JobOffer" (
    "Id" integer NOT NULL,
    "User" integer NOT NULL,
    "CorporationName" character varying(100) NOT NULL,
    "CompanySpecialization" integer NOT NULL,
    "Country" integer NOT NULL,
    "City" integer NOT NULL,
    "Neighborhood" integer NOT NULL,
    "AgeMin" integer,
    "Salary" nummultirange,
    "JobOfferCategory" integer NOT NULL,
    "AgeMax" smallint
);


ALTER TABLE public."JobOffer" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16432)
-- Name: JobOfferCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."JobOfferCategories" (
    "Id" integer NOT NULL,
    "IdJobOffer" integer,
    "IdCategory" integer
);


ALTER TABLE public."JobOfferCategories" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16435)
-- Name: JobOfferCategories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOfferCategories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOfferCategories_Id_seq" OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 229
-- Name: JobOfferCategories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOfferCategories_Id_seq" OWNED BY public."JobOfferCategories"."Id";


--
-- TOC entry 230 (class 1259 OID 16436)
-- Name: JobOffer_Age_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."JobOffer_Age_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JobOffer_Age_seq" OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 230
-- Name: JobOffer_Age_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Age_seq" OWNED BY public."JobOffer"."AgeMin";


--
-- TOC entry 231 (class 1259 OID 16437)
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
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 231
-- Name: JobOffer_Category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Category_seq" OWNED BY public."JobOffer"."JobOfferCategory";


--
-- TOC entry 232 (class 1259 OID 16438)
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
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 232
-- Name: JobOffer_City_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_City_seq" OWNED BY public."JobOffer"."City";


--
-- TOC entry 233 (class 1259 OID 16439)
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
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 233
-- Name: JobOffer_CompanySpecialization_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_CompanySpecialization_seq" OWNED BY public."JobOffer"."CompanySpecialization";


--
-- TOC entry 234 (class 1259 OID 16440)
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
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 234
-- Name: JobOffer_Country_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Country_seq" OWNED BY public."JobOffer"."Country";


--
-- TOC entry 235 (class 1259 OID 16441)
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
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 235
-- Name: JobOffer_Neighborhood_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_Neighborhood_seq" OWNED BY public."JobOffer"."Neighborhood";


--
-- TOC entry 236 (class 1259 OID 16442)
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
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 236
-- Name: JobOffer_User_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."JobOffer_User_seq" OWNED BY public."JobOffer"."User";


--
-- TOC entry 244 (class 1259 OID 16505)
-- Name: Languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Languages" (
    "Id" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Level" character varying(50),
    "Certificate" bit(1) NOT NULL
);


ALTER TABLE public."Languages" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16443)
-- Name: Matches_Types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Matches_Types" (
    "Id" smallint
);


ALTER TABLE public."Matches_Types" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16446)
-- Name: Picker_Job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Picker_Job" (
    "Id" smallint,
    "Id_User" smallint,
    "Title" text,
    "Description" text,
    "Category" text,
    "Sub_Category" text,
    "Date_Created" date
);


ALTER TABLE public."Picker_Job" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16451)
-- Name: Pickers_Matches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pickers_Matches" (
    "Id" smallint,
    "Id_Job" smallint,
    "Id_User" smallint,
    "Match_Type" smallint
);


ALTER TABLE public."Pickers_Matches" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16454)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Creation_Date" date,
    "Document_Type" integer NOT NULL,
    "Surname" character varying(50) NOT NULL,
    "Birthdate" date NOT NULL,
    "Gender" smallint NOT NULL,
    "Document_Number" numeric NOT NULL,
    "Email" character varying(320) NOT NULL,
    "Password" character varying(20) NOT NULL,
    "Phone" character varying(50) NOT NULL,
    "Passion" character varying(1024),
    "Hobbies" character varying(1024),
    "Seeking" character varying(1024),
    "Experience1" character varying(150),
    "Experience2" character varying(150),
    "Experience3" character varying(150),
    "JobOffers" integer NOT NULL,
    "UserName" character varying(150) NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16459)
-- Name: UserEducations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserEducations" (
    "Id" integer NOT NULL,
    "IdUser" integer NOT NULL,
    "IdEducationalInstitution" integer NOT NULL,
    "IdEducationalStatus" integer NOT NULL,
    "Major" character varying(150) NOT NULL
);


ALTER TABLE public."UserEducations" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16462)
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
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 242
-- Name: UserEducations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserEducations_Id_seq" OWNED BY public."UserEducations"."Id";


--
-- TOC entry 243 (class 1259 OID 16463)
-- Name: User_JobOffers_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_JobOffers_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_JobOffers_seq" OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 243
-- Name: User_JobOffers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_JobOffers_seq" OWNED BY public."User"."JobOffers";


--
-- TOC entry 4687 (class 2604 OID 16464)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 4688 (class 2604 OID 16465)
-- Name: Countries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Countries_Id_seq"'::regclass);


--
-- TOC entry 4689 (class 2604 OID 16466)
-- Name: Document_Types Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types" ALTER COLUMN "Id" SET DEFAULT nextval('public."Document_Types_Id_seq"'::regclass);


--
-- TOC entry 4690 (class 2604 OID 16467)
-- Name: EducationalInstitutions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalInstitutions_Id_seq"'::regclass);


--
-- TOC entry 4691 (class 2604 OID 16468)
-- Name: EducationalStatus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus" ALTER COLUMN "Id" SET DEFAULT nextval('public."EducationalStatus_Id_seq"'::regclass);


--
-- TOC entry 4692 (class 2604 OID 16469)
-- Name: Genders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Genders_Id_seq"'::regclass);


--
-- TOC entry 4693 (class 2604 OID 16470)
-- Name: JobOffer User; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "User" SET DEFAULT nextval('public."JobOffer_User_seq"'::regclass);


--
-- TOC entry 4694 (class 2604 OID 16471)
-- Name: JobOffer CompanySpecialization; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "CompanySpecialization" SET DEFAULT nextval('public."JobOffer_CompanySpecialization_seq"'::regclass);


--
-- TOC entry 4695 (class 2604 OID 16472)
-- Name: JobOffer Country; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "Country" SET DEFAULT nextval('public."JobOffer_Country_seq"'::regclass);


--
-- TOC entry 4696 (class 2604 OID 16473)
-- Name: JobOffer City; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "City" SET DEFAULT nextval('public."JobOffer_City_seq"'::regclass);


--
-- TOC entry 4697 (class 2604 OID 16474)
-- Name: JobOffer Neighborhood; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "Neighborhood" SET DEFAULT nextval('public."JobOffer_Neighborhood_seq"'::regclass);


--
-- TOC entry 4698 (class 2604 OID 16475)
-- Name: JobOffer AgeMin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "AgeMin" SET DEFAULT nextval('public."JobOffer_Age_seq"'::regclass);


--
-- TOC entry 4699 (class 2604 OID 16476)
-- Name: JobOffer JobOfferCategory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer" ALTER COLUMN "JobOfferCategory" SET DEFAULT nextval('public."JobOffer_Category_seq"'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16477)
-- Name: JobOfferCategories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOfferCategories" ALTER COLUMN "Id" SET DEFAULT nextval('public."JobOfferCategories_Id_seq"'::regclass);


--
-- TOC entry 4701 (class 2604 OID 16478)
-- Name: User JobOffers; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "JobOffers" SET DEFAULT nextval('public."User_JobOffers_seq"'::regclass);


--
-- TOC entry 4702 (class 2604 OID 16479)
-- Name: UserEducations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserEducations" ALTER COLUMN "Id" SET DEFAULT nextval('public."UserEducations_Id_seq"'::regclass);


--
-- TOC entry 4868 (class 0 OID 16399)
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


--
-- TOC entry 4870 (class 0 OID 16405)
-- Dependencies: 217
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
-- TOC entry 4872 (class 0 OID 16409)
-- Dependencies: 219
-- Data for Name: Document_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Document_Types" VALUES (1, 'Id');
INSERT INTO public."Document_Types" VALUES (2, 'Passport');


--
-- TOC entry 4874 (class 0 OID 16413)
-- Dependencies: 221
-- Data for Name: EducationalInstitutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."EducationalInstitutions" VALUES (1, 'ORT');
INSERT INTO public."EducationalInstitutions" VALUES (2, 'MIT');
INSERT INTO public."EducationalInstitutions" VALUES (3, 'UBA');
INSERT INTO public."EducationalInstitutions" VALUES (4, 'UTN Universidad TEcnologica');


--
-- TOC entry 4876 (class 0 OID 16417)
-- Dependencies: 223
-- Data for Name: EducationalStatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."EducationalStatus" VALUES (1, 'Abandoned');
INSERT INTO public."EducationalStatus" VALUES (2, 'Finalized');
INSERT INTO public."EducationalStatus" VALUES (3, 'In Progress');


--
-- TOC entry 4878 (class 0 OID 16421)
-- Dependencies: 225
-- Data for Name: Genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Genders" VALUES (1, 'Male');
INSERT INTO public."Genders" VALUES (2, 'Female');
INSERT INTO public."Genders" VALUES (3, 'I prefer not to say');
INSERT INTO public."Genders" VALUES (4, 'Other');


--
-- TOC entry 4880 (class 0 OID 16427)
-- Dependencies: 227
-- Data for Name: JobOffer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4881 (class 0 OID 16432)
-- Dependencies: 228
-- Data for Name: JobOfferCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4897 (class 0 OID 16505)
-- Dependencies: 244
-- Data for Name: Languages; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4890 (class 0 OID 16443)
-- Dependencies: 237
-- Data for Name: Matches_Types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4891 (class 0 OID 16446)
-- Dependencies: 238
-- Data for Name: Picker_Job; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4892 (class 0 OID 16451)
-- Dependencies: 239
-- Data for Name: Pickers_Matches; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4893 (class 0 OID 16454)
-- Dependencies: 240
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4894 (class 0 OID 16459)
-- Dependencies: 241
-- Data for Name: UserEducations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_Id_seq"', 7, true);


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 218
-- Name: Countries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Countries_Id_seq"', 253, true);


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 220
-- Name: Document_Types_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Document_Types_Id_seq"', 2, true);


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 222
-- Name: EducationalInstitutions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EducationalInstitutions_Id_seq"', 4, true);


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 224
-- Name: EducationalStatus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EducationalStatus_Id_seq"', 3, true);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 226
-- Name: Genders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Genders_Id_seq"', 4, true);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 229
-- Name: JobOfferCategories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOfferCategories_Id_seq"', 1, false);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 230
-- Name: JobOffer_Age_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Age_seq"', 1, false);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 231
-- Name: JobOffer_Category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Category_seq"', 1, false);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 232
-- Name: JobOffer_City_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_City_seq"', 1, false);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 233
-- Name: JobOffer_CompanySpecialization_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_CompanySpecialization_seq"', 1, false);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 234
-- Name: JobOffer_Country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Country_seq"', 1, false);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 235
-- Name: JobOffer_Neighborhood_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_Neighborhood_seq"', 1, false);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 236
-- Name: JobOffer_User_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobOffer_User_seq"', 1, false);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 242
-- Name: UserEducations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserEducations_Id_seq"', 1, false);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 243
-- Name: User_JobOffers_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_JobOffers_seq"', 1, false);


--
-- TOC entry 4704 (class 2606 OID 16481)
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4706 (class 2606 OID 16483)
-- Name: Countries Countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4708 (class 2606 OID 16485)
-- Name: Document_Types Document_Types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Document_Types"
    ADD CONSTRAINT "Document_Types_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4710 (class 2606 OID 16487)
-- Name: EducationalInstitutions EducationalInstitutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalInstitutions"
    ADD CONSTRAINT "EducationalInstitutions_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4712 (class 2606 OID 16489)
-- Name: EducationalStatus EducationalStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EducationalStatus"
    ADD CONSTRAINT "EducationalStatus_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4714 (class 2606 OID 16491)
-- Name: Genders Genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Genders_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4718 (class 2606 OID 16493)
-- Name: JobOfferCategories JobOfferCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOfferCategories"
    ADD CONSTRAINT "JobOfferCategories_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4716 (class 2606 OID 16495)
-- Name: JobOffer JobOffer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobOffer"
    ADD CONSTRAINT "JobOffer_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4724 (class 2606 OID 16509)
-- Name: Languages Languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Languages"
    ADD CONSTRAINT "Languages_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4722 (class 2606 OID 16497)
-- Name: UserEducations UserEducations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserEducations"
    ADD CONSTRAINT "UserEducations_pkey" PRIMARY KEY ("IdUser");


--
-- TOC entry 4720 (class 2606 OID 16531)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");


-- Completed on 2024-06-07 10:02:53

--
-- PostgreSQL database dump complete
--

