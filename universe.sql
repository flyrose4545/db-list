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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_liquid_water_on_surface boolean,
    moon_id integer NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_number_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_number_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(50,3),
    description text,
    is_spherical boolean,
    has_liquid_water_on_surface boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_number_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_number_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(50,3),
    description text,
    is_spherical boolean,
    has_liquid_water_on_surface boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_number_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(50,3),
    description text,
    is_spherical boolean,
    has_liquid_water_on_surface boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_number_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(50,3),
    description text,
    is_spherical boolean,
    has_liquid_water_on_surface boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_number_seq OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_number_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_number_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_number_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'unknown1', false, 1);
INSERT INTO public.earth VALUES (2, 'unknown2', false, 2);
INSERT INTO public.earth VALUES (3, 'unknown3', true, 3);
INSERT INTO public.earth VALUES (4, 'unknown4', false, 10);
INSERT INTO public.earth VALUES (5, 'unknown5', false, 11);
INSERT INTO public.earth VALUES (6, 'unknown6', true, 12);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'unknown1', NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (2, 'unknown2', NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'unknown3', NULL, NULL, NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'unknown4', NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'unknown5', NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'unknown6', NULL, NULL, NULL, NULL, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'unknown1', NULL, NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (2, 'unknown2', NULL, NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (3, 'unknown3', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.moon VALUES (4, 'unknown4', NULL, NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (5, 'unknown5', NULL, NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.moon VALUES (6, 'unknown6', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.moon VALUES (7, 'unknown7', NULL, NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (8, 'unknown8', NULL, NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (9, 'unknown9', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.moon VALUES (10, 'unknown10', NULL, NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (11, 'unknown11', NULL, NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.moon VALUES (12, 'unknown12', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.moon VALUES (13, 'unknown13', NULL, NULL, NULL, NULL, NULL, false, 7);
INSERT INTO public.moon VALUES (14, 'unknown14', NULL, NULL, NULL, NULL, NULL, false, 8);
INSERT INTO public.moon VALUES (15, 'unknown15', NULL, NULL, NULL, NULL, NULL, true, 9);
INSERT INTO public.moon VALUES (16, 'unknown16', NULL, NULL, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (17, 'unknown17', NULL, NULL, NULL, NULL, NULL, false, 11);
INSERT INTO public.moon VALUES (18, 'unknown18', NULL, NULL, NULL, NULL, NULL, true, 12);
INSERT INTO public.moon VALUES (19, 'unknown19', NULL, NULL, NULL, NULL, NULL, false, 7);
INSERT INTO public.moon VALUES (20, 'unknown20', NULL, NULL, NULL, NULL, NULL, false, 8);
INSERT INTO public.moon VALUES (21, 'unknown21', NULL, NULL, NULL, NULL, NULL, true, 9);
INSERT INTO public.moon VALUES (22, 'unknown22', NULL, NULL, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (23, 'unknown23', NULL, NULL, NULL, NULL, NULL, false, 11);
INSERT INTO public.moon VALUES (24, 'unknown24', NULL, NULL, NULL, NULL, NULL, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'unknown1', NULL, NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.planet VALUES (2, 'unknown2', NULL, NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (3, 'unknown3', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (4, 'unknown4', NULL, NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'unknown5', NULL, NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.planet VALUES (6, 'unknown6', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.planet VALUES (7, 'unknown7', NULL, NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.planet VALUES (8, 'unknown8', NULL, NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (9, 'unknown9', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (10, 'unknown10', NULL, NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'unknown11', NULL, NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.planet VALUES (12, 'unknown12', NULL, NULL, NULL, NULL, NULL, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'unknown1', NULL, NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.star VALUES (2, 'unknown2', NULL, NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.star VALUES (3, 'unknown3', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.star VALUES (4, 'unknown4', NULL, NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (5, 'unknown5', NULL, NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.star VALUES (6, 'unknown6', NULL, NULL, NULL, NULL, NULL, true, 6);


--
-- Name: earth_earth_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_number_seq', 1, false);


--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_number_seq', 1, false);


--
-- Name: moon_moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_number_seq', 1, false);


--
-- Name: planet_planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_number_seq', 1, false);


--
-- Name: star_star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_number_seq', 1, false);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: earth earth_moon_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_moon_number_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_number_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_number_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_number_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

