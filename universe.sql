
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    tipo character varying(20),
    age_millions integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    earth_distance integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    spherical boolean,
    age_mililons numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    tipo character varying(20) NOT NULL,
    temp integer,
    age_millons integer,
    spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'espiral', 1000, true);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 'elíptica', 4567, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxia del Sombrero', 'irregular', 2584, false);
INSERT INTO public.galaxy VALUES (4, 'Gran Nube de Magallanes', 'espiral', 2541, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Cigarro', 'espiral', 2158, false);
INSERT INTO public.galaxy VALUES (6, 'Enana del Can Mayor', 'cercana', 896, false);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'espiral', 'galaxia con brazos en espiral');
INSERT INTO public.galaxy_type VALUES (2, 'eliptica', 'forma ovalada');
INSERT INTO public.galaxy_type VALUES (3, 'irregular', 'sin forma definida');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Objeto astronómico que orbita un planeta', true, 382, 3);
INSERT INTO public.moon VALUES (2, 'Ío', 'Objeto astronómico que orbita un planeta', false, 450, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 'Objeto astronómico que orbita un planeta', false, 258, 5);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 'Objeto astronómico que orbita un planeta', false, 1456, 5);
INSERT INTO public.moon VALUES (5, 'Calisto', 'Objeto astronómico que orbita un planeta', false, 1458, 5);
INSERT INTO public.moon VALUES (6, 'Titán', 'Objeto astronómico que orbita un planeta', false, 1257, 6);
INSERT INTO public.moon VALUES (7, 'Encélado', 'Objeto astronómico que orbita un planeta', false, 1324, 6);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Objeto astronómico que orbita un planeta', false, 12548, 6);
INSERT INTO public.moon VALUES (9, 'Rea', 'Objeto astronómico que orbita un planeta', false, 258, 6);
INSERT INTO public.moon VALUES (10, 'Dione', 'Objeto astronómico que orbita un planeta', false, 156, 6);
INSERT INTO public.moon VALUES (11, 'Fobos', 'Objeto astronómico que orbita un planeta', false, 123, 4);
INSERT INTO public.moon VALUES (12, 'Deimos', 'Objeto astronómico que orbita un planeta', false, 489, 4);
INSERT INTO public.moon VALUES (13, 'Titania', 'Objeto astronómico que orbita un planeta', false, 756, 7);
INSERT INTO public.moon VALUES (14, 'Oberón', 'Objeto astronómico que orbita un planeta', false, 147, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Objeto astronómico que orbita un planeta', false, 125, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Objeto astronómico que orbita un planeta', false, 143, 7);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Objeto astronómico que orbita un planeta', false, 584, 7);
INSERT INTO public.moon VALUES (18, 'Hiperión', 'Objeto astronómico que orbita un planeta', false, 456, 6);
INSERT INTO public.moon VALUES (19, 'Jápeto', 'Objeto astronómico que orbita un planeta', false, 487, 6);
INSERT INTO public.moon VALUES (20, 'Febe', 'Objeto astronómico que orbita un planeta', false, 856, 6);
INSERT INTO public.moon VALUES (21, 'Tetis', 'Objeto astronómico que orbita un planeta', false, 985, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 77, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 40, 2);
INSERT INTO public.planet VALUES (3, 'Tierra', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', true, 0, 3);
INSERT INTO public.planet VALUES (4, 'Marte', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 55, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 590, 5);
INSERT INTO public.planet VALUES (6, 'Saturno', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 1275, 6);
INSERT INTO public.planet VALUES (7, 'Urano', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 2970, 7);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 4300, 8);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 2000, 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 1000, 1);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 2500, 2);
INSERT INTO public.planet VALUES (12, 'Gliese 581 c', 'cuerpos opacos, de forma casi esférica varían drásticamente en tamaño, atmósfera y temperatura', false, 3000, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Canopus', 'enana', 50, 382, false, 1);
INSERT INTO public.star VALUES (2, 'Arturo', 'roja', 46, 450, false, 1);
INSERT INTO public.star VALUES (3, 'Vega', 'gigante', 70, 258, false, 1);
INSERT INTO public.star VALUES (4, 'Capella', 'enana', 50, 1456, false, 3);
INSERT INTO public.star VALUES (5, 'Rigel', 'roja', 92, 1458, false, 4);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'gigante', 45, 1257, false, 5);
INSERT INTO public.star VALUES (7, 'Aldebarán', 'enana', 78, 1324, false, 5);
INSERT INTO public.star VALUES (8, 'Altair', 'roja', 80, 382, false, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

