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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    type_galaxy character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    natural_satellite boolean NOT NULL,
    surface_detail character varying(30),
    orbit_in_days numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    within_our_solar_system boolean NOT NULL,
    mass integer,
    equatorial_diameter numeric,
    type_planet character varying(30) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_rating character varying(5),
    solar_mass character varying(30),
    age_in_years integer,
    distance_from_earth_km integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 4300, 1, false);
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 15000, 2, false);
INSERT INTO public.blackhole VALUES (3, 'TON 618', 660000, 3, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'contiene agujero negro supermasivo en su centro', 'espiral barrada', 14);
INSERT INTO public.galaxy VALUES (2, 'Andromeda(M31)', 'supera la via lactea en extension', 'espiral', 1);
INSERT INTO public.galaxy VALUES (3, 'Gran Nube de Magallanes(GNM)', 'alberga Nebulosa la Tarántula', 'enana irregular', 2);
INSERT INTO public.galaxy VALUES (4, 'Pequeña Nube Magallanes(PNM)', 'Proceso desintegración gradual', 'enana irregular', 6);
INSERT INTO public.galaxy VALUES (5, 'La Galaxia del triangulo(M33)', 'alta tasa de formacion estelar', 'espiral', 1);
INSERT INTO public.galaxy VALUES (6, 'Girasol(M63)', 'brazos espirales fragmentados', 'espiral floculenta', 37);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, true, 'Rocosa', 27.3);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, true, 'Irregular', 0.3);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, true, 'Irregular', 1.3);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 'Volcanica', 1.8);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 'Hielo', 3.5);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 5, true, 'Rocosa', 7.1);
INSERT INTO public.moon VALUES (7, 'Calisto', 5, true, 'Cratereada', 16.7);
INSERT INTO public.moon VALUES (8, 'Titan', 6, true, 'Atmosfera densa', 15.9);
INSERT INTO public.moon VALUES (9, 'Encelado', 6, true, 'Hielo', 1.4);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, true, 'Cratereada', 0.9);
INSERT INTO public.moon VALUES (11, 'Ariel', 7, true, 'Rocosa', 2.5);
INSERT INTO public.moon VALUES (12, 'Umbriel', 7, true, 'Oscura', 4.1);
INSERT INTO public.moon VALUES (13, 'Titania', 7, true, 'Rocosa', 8.7);
INSERT INTO public.moon VALUES (14, 'Oberon', 7, true, 'Rocosa', 13.5);
INSERT INTO public.moon VALUES (15, 'Triton', 8, true, 'Hielo', -5.9);
INSERT INTO public.moon VALUES (16, 'Nereida', 8, true, 'Irregular', 360.1);
INSERT INTO public.moon VALUES (17, 'Charon', 9, true, 'Rocosa', 6.4);
INSERT INTO public.moon VALUES (18, 'Styx', 9, true, 'Irregular', 20.2);
INSERT INTO public.moon VALUES (19, 'Kerberos', 9, true, 'Irregular', 32.1);
INSERT INTO public.moon VALUES (20, 'Hydra', 9, true, 'Irregular', 38.2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 1, false, true, 330, 4879, 'Rocoso');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, true, 4868, 12104, 'Rocoso');
INSERT INTO public.planet VALUES (3, 'Tierra', 1, true, true, 5972, 12742, 'Rocoso');
INSERT INTO public.planet VALUES (4, 'Marte', 1, false, true, 641, 6779, 'Rocoso');
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, false, true, 1898000, 139820, 'Gaseoso');
INSERT INTO public.planet VALUES (6, 'Saturno', 2, false, true, 568000, 116460, 'Gaseoso');
INSERT INTO public.planet VALUES (7, 'Urano', 3, false, true, 86810, 50724, 'Gaseoso');
INSERT INTO public.planet VALUES (8, 'Neptuno', 3, false, true, 102400, 49244, 'Gaseoso');
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 2, false, false, NULL, NULL, 'Exoplaneta');
INSERT INTO public.planet VALUES (10, 'Proxima b', 3, false, false, 12700, 11400, 'Exoplaneta');
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 1, false, false, NULL, NULL, 'Exoplaneta');
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 2, false, false, 220000, 143000, 'Gaseoso');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio A', 1, 'A1V', '206.3 % M', 230, 9);
INSERT INTO public.star VALUES (2, 'Vega', 1, 'A0V', '2.135 % M', 450, 240);
INSERT INTO public.star VALUES (3, 'R136a1', 3, 'WN5h', '265 M☉', 230, 9);
INSERT INTO public.star VALUES (4, 'S Cephei', 1, 'CV6', '5.4 M ☉', NULL, NULL);
INSERT INTO public.star VALUES (5, 'CW Leonis', 1, 'C9.5e', '2 M☉', NULL, 310);
INSERT INTO public.star VALUES (6, 'S Doradus', 3, 'LBV', '45 M☉', NULL, 190);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: moon name_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique_moon UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

