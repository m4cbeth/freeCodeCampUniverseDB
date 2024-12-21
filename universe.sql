--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: coordinates; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.coordinates (
    body_type integer NOT NULL,
    body_id integer NOT NULL,
    coordinates_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.coordinates OWNER TO freecodecamp;

--
-- Name: coordinates_coordinates_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.coordinates_coordinates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordinates_coordinates_id_seq OWNER TO freecodecamp;

--
-- Name: coordinates_coordinates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.coordinates_coordinates_id_seq OWNED BY public.coordinates.coordinates_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inhabited boolean,
    age numeric,
    size character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gal_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gal_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size character varying(30),
    color character varying(30)
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
    contacted boolean,
    number_of_moons integer,
    description text,
    size character varying(30),
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
    number_of_planets integer,
    galaxy_id integer,
    size character varying(30)
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
-- Name: coordinates coordinates_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordinates ALTER COLUMN coordinates_id SET DEFAULT nextval('public.coordinates_coordinates_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gal_id_seq'::regclass);


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
-- Data for Name: coordinates; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.coordinates VALUES (1, 2, 3, 'Earth');
INSERT INTO public.coordinates VALUES (1, 2, 1, 'Sol');
INSERT INTO public.coordinates VALUES (1, 2, 2, 'Moon');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 20, 'real big');
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', false, 30, 'huge');
INSERT INTO public.galaxy VALUES (4, 'Virgo', false, 60, 'tiny');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 1000, 'pretty big');
INSERT INTO public.galaxy VALUES (5, 'Maffei I', false, 300, 'big');
INSERT INTO public.galaxy VALUES (6, 'Maffei II', false, 301, 'bigger');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'SaturnMoon1', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (2, 'SaturnMoon2', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (3, 'SaturnMoon3', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (4, 'SaturnMoon4', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (5, 'SaturnMoon5', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (6, 'SaturnMoon6', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (7, 'SaturnMoon7', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (8, 'SaturnMoon8', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (9, 'SaturnMoon9', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (10, 'SaturnMoon10', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (11, 'SaturnMoon11', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (12, 'SaturnMoon12', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (13, 'SaturnMoon13', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (14, 'SaturnMoon14', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (15, 'SaturnMoon15', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (16, 'SaturnMoon16', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (17, 'SaturnMoon17', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (18, 'SaturnMoon18', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (19, 'SaturnMoon19', 6, 'big', 'grey');
INSERT INTO public.moon VALUES (20, 'SaturnMoon20', 6, 'big', 'grey');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (4, 'Earth', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (10, 'Planet X', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (11, 'Planet Y', false, 1, 'y', '1', 1);
INSERT INTO public.planet VALUES (12, 'Alient Town', false, 1, 'y', '1', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 9, 1, 'big');
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 9, 1, 'big');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 9, 1, 'big');
INSERT INTO public.star VALUES (4, 'Vega', 9, 1, 'big');
INSERT INTO public.star VALUES (5, 'Rigel', 9, 1, 'big');
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 9, 1, 'big');


--
-- Name: coordinates_coordinates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.coordinates_coordinates_id_seq', 2, true);


--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gal_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: coordinates coordinates_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT coordinates_name_key UNIQUE (name);


--
-- Name: coordinates coordinates_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT coordinates_pkey PRIMARY KEY (coordinates_id);


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

