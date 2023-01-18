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
-- Name: cosmos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmos (
    cosmos_id integer NOT NULL,
    events character varying(30),
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.cosmos OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmos_cosmos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmos_cosmos_id_seq OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmos_cosmos_id_seq OWNED BY public.cosmos.cosmos_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    constellation character varying(25),
    type text,
    group_local boolean
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
    name character varying(25) NOT NULL,
    discovered_byyear integer,
    diameter_km text,
    bigger_than_any_planet boolean,
    planet_id integer
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
    color character varying(30) NOT NULL,
    radio_km numeric(8,2) NOT NULL,
    distance_the_sun integer
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
    name character varying(25) NOT NULL,
    magnitude numeric(4,2) NOT NULL,
    distance_lightyears text,
    size text,
    galaxy_id integer
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
-- Name: cosmos cosmos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos ALTER COLUMN cosmos_id SET DEFAULT nextval('public.cosmos_cosmos_id_seq'::regclass);


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
-- Data for Name: cosmos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmos VALUES (1, 'shine', 'Shine', 1);
INSERT INTO public.cosmos VALUES (2, 'spin', 'Spin', 1);
INSERT INTO public.cosmos VALUES (3, 'releasy energy', 'Energy', 1);
INSERT INTO public.cosmos VALUES (4, 'emit heat', 'Heat', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', ' ', 'SBdc', true);
INSERT INTO public.galaxy VALUES (2, 'Large Magellan Cloud', 'Mensa', 'Irr/SB(s)m pec', true);
INSERT INTO public.galaxy VALUES (3, 'Andrómeda', 'Andrómeda', 'SA(s)b', true);
INSERT INTO public.galaxy VALUES (4, 'NGC 1569', 'Camelopardalis', 'iBm;Sbrst', false);
INSERT INTO public.galaxy VALUES (5, 'Circinus(ESO 097-13)', 'Circinus', 'SA(s)b', false);
INSERT INTO public.galaxy VALUES (6, 'Triangle Galaxy', 'Triangulum', 'SAc', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (11, 'Lapetus', 1671, '1.436', false, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 1684, '1.120', false, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 1898, '763', false, NULL);
INSERT INTO public.moon VALUES (1, 'Moon', 0, '3.476', false, 4);
INSERT INTO public.moon VALUES (2, 'Deimos', 1877, '8', false, 5);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, '560', false, 5);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 1610, '5276', true, 6);
INSERT INTO public.moon VALUES (7, 'Calisto', 1610, '4800', false, 6);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, '3126', false, 6);
INSERT INTO public.moon VALUES (20, 'Himalia', 1904, '107', false, 6);
INSERT INTO public.moon VALUES (6, 'IO', 1610, '3643', false, 6);
INSERT INTO public.moon VALUES (8, 'Titán', 1655, '5150', true, 7);
INSERT INTO public.moon VALUES (18, 'Atlas', 1980, '1320', false, 7);
INSERT INTO public.moon VALUES (9, 'Oberón', 1787, '1.526', false, 8);
INSERT INTO public.moon VALUES (17, 'Miranda', 1948, '472', false, 8);
INSERT INTO public.moon VALUES (16, 'Larisa', 1989, '203', false, 9);
INSERT INTO public.moon VALUES (14, 'Nereida', 1949, '340', false, 9);
INSERT INTO public.moon VALUES (10, 'Tritón', 1846, '2705', false, 9);
INSERT INTO public.moon VALUES (19, 'Galatea', 1989, '140', false, 9);
INSERT INTO public.moon VALUES (15, 'Proteo', 1989, '420', false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 'Grayish', 2439.70, 57910);
INSERT INTO public.planet VALUES (3, 'Venus', 'Ocher_yellow', 6051.80, 108200);
INSERT INTO public.planet VALUES (4, 'Earth', 'Blue_green', 6378.33, 149600);
INSERT INTO public.planet VALUES (5, 'Mars', 'Red', 3397.20, 227940);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Orange_white', 71492.01, 778330);
INSERT INTO public.planet VALUES (7, 'Saturn', 'dull_yellow', 60268.02, 1429400);
INSERT INTO public.planet VALUES (8, 'Uranus', 'methane_blue', 25559.20, 2870990);
INSERT INTO public.planet VALUES (9, 'Neptune', 'blue_intense', 24746.40, 4504300);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Brown_gray', 1160.00, 5913220);
INSERT INTO public.planet VALUES (11, 'Ceres', 'White_grayish', 473.32, 678334560);
INSERT INTO public.planet VALUES (12, 'Eris', 'grayish', 1163.20, 918012285);
INSERT INTO public.planet VALUES (13, 'Haumea', 'White_grayish', 816.05, 678334606);
INSERT INTO public.planet VALUES (1, 'Sun', 'Yellow', 693943.00, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', -1.47, '8.6', 'White Dwarf', NULL);
INSERT INTO public.star VALUES (2, 'Arthur', 0.72, '36.7', 'White-yellow-supergiant', NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 0.12, '90.0', 'Blue-supergiant', NULL);
INSERT INTO public.star VALUES (4, 'Canopus', 0.72, '309.8', 'Orange-giant', NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', -0.01, '4.37', 'Yellow-dwarf', NULL);
INSERT INTO public.star VALUES (6, 'Vega', 0.03, '25.3', 'White-giant', NULL);


--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmos_cosmos_id_seq', 4, true);


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
-- Name: galaxy constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constellation UNIQUE (constellation);


--
-- Name: cosmos cosmos_events_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_events_key UNIQUE (events);


--
-- Name: cosmos cosmos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_pkey PRIMARY KEY (cosmos_id);


--
-- Name: moon diameter_km; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT diameter_km UNIQUE (diameter_km);


--
-- Name: star distance_lightyears; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT distance_lightyears UNIQUE (distance_lightyears);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet radio_km; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT radio_km UNIQUE (radio_km);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: cosmos cosmos_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.cosmos(cosmos_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
