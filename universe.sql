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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer NOT NULL,
    size integer,
    number_of_life numeric,
    remark text,
    reachable boolean,
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer NOT NULL,
    size integer,
    number_of_life numeric,
    remark text,
    reachable boolean,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    distance integer NOT NULL,
    size integer,
    number_of_life numeric,
    remark text,
    reachable boolean,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    distance integer NOT NULL,
    size integer,
    number_of_life numeric,
    remark text,
    reachable boolean,
    has_life boolean,
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
-- Name: table_1; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_1 (
    table_1_id integer NOT NULL,
    name character varying(50) NOT NULL,
    yes_or_no boolean
);


ALTER TABLE public.table_1 OWNER TO freecodecamp;

--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_1_table_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_1_table_1_id_seq OWNER TO freecodecamp;

--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_1_table_1_id_seq OWNED BY public.table_1.table_1_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table_1 table_1_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1 ALTER COLUMN table_1_id SET DEFAULT nextval('public.table_1_table_1_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy-1', 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy-2', 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy-3', 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy-4', 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy-5', 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy-6', 500, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon-1', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'moon-2', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon-3', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'moon-4', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'moon-5', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'moon-6', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'moon-7', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'moon-8', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'moon-9', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'moon-10', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'moon-11', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'moon-12', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'moon-13', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon-14', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'moon-15', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'moon-16', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'moon-17', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'moon-18', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'moon-19', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (21, 'moon-20', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (22, 'moon-21', 500, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PLANET-1', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (2, 'PLANET-2', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'PLANET-3', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'PLANET-4', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'PLANET-5', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'PLANET-6', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'PLANET-7', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'PLANET-8', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'PLANET-9', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'PLANET-10', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'PLANET-11', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'PLANET-12', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'PLANET-13', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (14, 'PLANET-14', 500, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STAR-1', 500, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'STAR-2', 500, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'STAR-3', 500, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'STAR-4', 500, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'STAR-5', 500, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'STAR-6', 500, NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: table_1; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_1 VALUES (1, 'Sam', true);
INSERT INTO public.table_1 VALUES (2, 'Peter', true);
INSERT INTO public.table_1 VALUES (3, 'Joe', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_1_table_1_id_seq', 3, true);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_1 table_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_pkey PRIMARY KEY (table_1_id);


--
-- Name: galaxy unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constraint UNIQUE (name);


--
-- Name: star unique_constraint_1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_constraint_1 UNIQUE (name);


--
-- Name: planet unique_constraint_2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_constraint_2 UNIQUE (name);


--
-- Name: moon unique_constraint_3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_constraint_3 UNIQUE (name);


--
-- Name: table_1 unique_constraint_4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT unique_constraint_4 UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

