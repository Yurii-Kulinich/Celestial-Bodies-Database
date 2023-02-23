--
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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type character varying(30),
    is_superhole boolean NOT NULL,
    groupping character varying(30)
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
    name character varying(30) NOT NULL,
    description text,
    is_moon boolean,
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
    dist_earth numeric(10,5),
    speed integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: palnet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.palnet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.palnet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: palnet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.palnet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(30),
    temperature integer,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.palnet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys Comet', 2);
INSERT INTO public.comet VALUES (2, 'Comet Haykutake', 2);
INSERT INTO public.comet VALUES (3, 'Comet Hale-Bop', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromede', 'spiral', true, 'groupped');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', true, 'groupped');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'peculiar', false, 'alone');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'spiral', false, 'autist');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'spiral', false, 'grouped');
INSERT INTO public.galaxy VALUES (6, 'Whirpool', 'spiral', false, 'grouped');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 'Has a diametr of 22.2 km', true, 6);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Has a diametr of 12.6 km', true, 6);
INSERT INTO public.moon VALUES (3, 'Europa', 'Six largest moon in the Solar System', true, 2);
INSERT INTO public.moon VALUES (4, 'Ganymed', 'The largest and most massive of the moons in the Solar System', true, 2);
INSERT INTO public.moon VALUES (5, 'Miranda', 'The smallest of Uranus 5 satellites', true, 5);
INSERT INTO public.moon VALUES (6, 'Titanis', 'The largest of Uranus moons', true, 5);
INSERT INTO public.moon VALUES (7, 'Oberon', 'The outermost major moon of Uranus', true, 5);
INSERT INTO public.moon VALUES (8, 'Umbriel', 'Named after the character of a poem', true, 5);
INSERT INTO public.moon VALUES (9, 'Ariel', 'Was discovered together with Umbriel', true, 5);
INSERT INTO public.moon VALUES (10, 'Titan', 'Is a largest moon of Saturn', true, 3);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'It is about 500 km in diametr', true, 3);
INSERT INTO public.moon VALUES (12, 'Mimas', 'Discovered by William Hershel', true, 3);
INSERT INTO public.moon VALUES (13, 'Hyperion', 'Discovered by William Crunch', true, 3);
INSERT INTO public.moon VALUES (14, 'Dion', 'Discovered by Jovanni Domenico', true, 3);
INSERT INTO public.moon VALUES (15, 'Lapetus', 'Diametr 1.5km', true, 3);
INSERT INTO public.moon VALUES (16, 'Thetys', 'Diametr 1.06km', true, 3);
INSERT INTO public.moon VALUES (17, 'Talesto', 'Was discovered in 1980', true, 3);
INSERT INTO public.moon VALUES (18, 'Phoebe', 'The most massive satellite of Saturn', true, 3);
INSERT INTO public.moon VALUES (19, 'Daphnis', 'Is an inner satellite of Saturn', true, 3);
INSERT INTO public.moon VALUES (20, 'Rhea', 'Is the second largest satellite of Saturn', true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Neptune', 164.80000, 30, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 3991.01230, 401, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 1223.18000, 30, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 1323.99000, 44, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 123.99000, 100, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 893.99000, 35, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 12223.99000, 99, 1);
INSERT INTO public.planet VALUES (8, 'Earth', 0.00000, 45, 1);
INSERT INTO public.planet VALUES (10, 'HD 172372', NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'HD 1319882', NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'HD 12392', NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'HD 523492', NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'red', 5772, 2);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'red', 3600, 2);
INSERT INTO public.star VALUES (3, 'Vega', 'green', 9600, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 'white', 24000, 2);
INSERT INTO public.star VALUES (5, 'Antares', 'yellow', 18500, 2);
INSERT INTO public.star VALUES (6, 'Aldebaran', 'yellow', 10000, 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: palnet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.palnet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: planet palnet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT palnet_name_key UNIQUE (name);


--
-- Name: planet palnet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT palnet_pkey PRIMARY KEY (planet_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


