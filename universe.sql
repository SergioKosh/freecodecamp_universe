-
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(50),
    distance_from_earth integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    galaxy_type character varying(20) NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    radius integer,
    description text,
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
    name character varying(20) NOT NULL,
    planet_type character varying(40) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    star_id integer NOT NULL
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
-- Name: race; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.race (
    race_id integer NOT NULL,
    description text,
    population_in_billion numeric,
    wight integer,
    hight integer,
    planet_id integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.race OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.race_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.race_race_id_seq OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.race_race_id_seq OWNED BY public.race.race_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    temperature integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: star_temperature_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_temperature_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_temperature_seq OWNER TO freecodecamp;

--
-- Name: star_temperature_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_temperature_seq OWNED BY public.star.temperature;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: race race_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race ALTER COLUMN race_id SET DEFAULT nextval('public.race_race_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star temperature; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN temperature SET DEFAULT nextval('public.star_temperature_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('orion_arm', 1, true, 'minor spiral arm of Milky Way Galaxy', 1, 'spiral');
INSERT INTO public.galaxy VALUES ('andromeda', 752, true, 'also known as Mesier 31, and originale ANDROMEDA NEBULA', 2, 'barel_spiral');
INSERT INTO public.galaxy VALUES ('eye_of_sayron', 16, true, 'Its one of the nearest galaxies. The galaxy was first mentioned  by WIlliam Hershel on March 17 1787', 3, 'spiral');
INSERT INTO public.galaxy VALUES ('fireworks', 8, false, 'Due its bright and spotty appearance', 4, 'spiral');
INSERT INTO public.galaxy VALUES ('condor', 65, true, 'located in contellation Pavo', 5, 'spiral');
INSERT INTO public.galaxy VALUES ('butterfly', 18, false, 'part of Virgo claster galaxies', 6, 'unbarred_spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The_moon', 1743, 'Its empty inside', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9377, 'It will collapse on Mars', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23377, 'JAXA is planing to send a drone to Deimos in 2024', 2);
INSERT INTO public.moon VALUES (4, 'Aplharatz_moon_1', 377, 'I suppose that the little prince is living there', 3);
INSERT INTO public.moon VALUES (5, 'Aplharatz_moon_2', 2377, 'The rose which devorced with the little prince is living there now', 3);
INSERT INTO public.moon VALUES (6, 'Aplharatz_moon_3', 1488, 'The reson is why the rose and the little prince are living separatly lives here', 3);
INSERT INTO public.moon VALUES (7, 'Azog', 50000, 'Azog which killed Thorin', 4);
INSERT INTO public.moon VALUES (8, 'Gul', 35500, 'Lover of Azog', 4);
INSERT INTO public.moon VALUES (9, 'Germe', 65500, 'One more orcish degenerate', 4);
INSERT INTO public.moon VALUES (10, 'Grazob', 12500, 'One more orcish degenerate', 4);
INSERT INTO public.moon VALUES (11, 'NZT', 45000, 'just a moon', 7);
INSERT INTO public.moon VALUES (44, 'Larch', 53266, 'Larch just Larch', 8);
INSERT INTO public.moon VALUES (45, 'Shisha', 556266, 'Shisha from Shianghai', 8);
INSERT INTO public.moon VALUES (46, 'Sanek', 46266, 'Sanek nothign else', 8);
INSERT INTO public.moon VALUES (47, 'DOTA', 789899, 'I spent my youth there', 8);
INSERT INTO public.moon VALUES (48, 'CS16', 789899, 'I spent my youth there', 8);
INSERT INTO public.moon VALUES (49, 'dwarf1', 456768, 'The oldest', 11);
INSERT INTO public.moon VALUES (50, 'dwarf2', 453768, 'So so', 11);
INSERT INTO public.moon VALUES (51, 'dwarf3', 45768, 'the smallest', 11);
INSERT INTO public.moon VALUES (52, 'elf', 65768, 'adopted elf', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'silicat_planet', true, 'The harbor of life', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'iron_planet', false, 'The next harbor of life', 1);
INSERT INTO public.planet VALUES (3, 'Small_Alpharetz', 'silicat_planet', true, 'Almost the same size as Earth', 2);
INSERT INTO public.planet VALUES (4, 'Huge_Alpharetz', 'gas_giant', false, 'I imagine this planet, could not find information about', 2);
INSERT INTO public.planet VALUES (5, 'Nazgul', 'gas_giant', false, 'I imagine this planet, could not find information about', 3);
INSERT INTO public.planet VALUES (6, 'Gorlum', 'silicat_planet', true, 'A special planet just for corrupted hobbites', 3);
INSERT INTO public.planet VALUES (7, 'Small_aldemarin', 'silicat_planet', true, 'NO INFORMATION', 4);
INSERT INTO public.planet VALUES (8, 'Big_aldemarin', 'silicat_planet', false, 'NO INFORMATION', 4);
INSERT INTO public.planet VALUES (9, 'Epsol_planetus_1', 'silicat_planet', false, 'NO INFORMATION', 5);
INSERT INTO public.planet VALUES (10, 'Epsol_planetus_2', 'gas_giant', false, 'NO INFORMATION', 5);
INSERT INTO public.planet VALUES (11, 'black_dwarf', 'tiny_giant', false, 'Its a gian, but just in its mind', 6);
INSERT INTO public.planet VALUES (12, 'yellow_dwarf', 'not_giant_at_all', false, ' Small, small dude', 6);


--
-- Data for Name: race; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.race VALUES (1, 'happened by accedent', 7, 30, 175, 1, 'human');
INSERT INTO public.race VALUES (2, 'They are amoung us', 5, 20, 255, 8, 'grey aliens');
INSERT INTO public.race VALUES (3, 'Dirty race', 25, 50, 155, 5, 'orcs');
INSERT INTO public.race VALUES (4, 'Look like human race but nerds', 30, 50, 155, 9, 'nerds');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4570, 5780, 1);
INSERT INTO public.star VALUES (2, 'Alpharatz', 97, 60, 13800, 2);
INSERT INTO public.star VALUES (3, 'Morgot', 43000000, 1200, 8000, 3);
INSERT INTO public.star VALUES (4, 'Aldemarin', 49, 7000, 7450, 4);
INSERT INTO public.star VALUES (5, 'Epsilon_Pavonis', 105, 25, 10440, 5);
INSERT INTO public.star VALUES (6, 'White_dwarf', 2100, 20000, 2510440, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: race_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.race_race_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_temperature_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_temperature_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: race name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: galaxy name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_galaxy UNIQUE (name);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: race race_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_pkey PRIMARY KEY (race_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: race fk_race; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT fk_race FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
---
