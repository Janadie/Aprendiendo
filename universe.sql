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

CREATE TABLE pubgit branch -M mainlic.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types character varying(30),
    local_group_id integer
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
-- Name: local_group; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.local_group (
    local_group_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer
);

ALTER TABLE public.local_group OWNER TO freecodecamp;

--
-- Name: local_group_local_group_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.local_group_local_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.local_group_local_group_id_seq OWNER TO freecodecamp;

--
-- Name: local_group_local_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.local_group_local_group_id_seq OWNED BY public.local_group.local_group_id;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
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
    age_in_millions_of_years integer,
    planet_types text,
    surface_gravity numeric(4,2),
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    star_types character varying(30),
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
-- Name: local_group local_group_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.local_group ALTER COLUMN local_group_id SET DEFAULT nextval('public.local_group_local_group_id_seq'::regclass);

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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 13600, 'Spiral', 1);
INSERT INTO public.galaxy VALUES (2, 'M32', 10000, 'Elliptical', 1);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 13600, 'Spiral', 2);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 13200, 'Irregular', 2);
INSERT INTO public.galaxy VALUES (5, 'Triangle', 12000, 'Spiral', 3);
INSERT INTO public.galaxy VALUES (6, 'NGC 604', 4000, 'Nebula', 3);

--
-- Data for Name: local_group; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.local_group VALUES (1, 'Andromeda System', 14);
INSERT INTO public.local_group VALUES (2, 'Milky Way System', 14);
INSERT INTO public.local_group VALUES (3, 'Triangulum System', 12);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, true, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 4500, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, true, 4);
INSERT INTO public.moon VALUES (4, 'Ío', 4500, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 4500, true, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 4500, true, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 4500, true, 6);
INSERT INTO public.moon VALUES (9, 'Encélado', 4500, true, 6);
INSERT INTO public.moon VALUES (10, 'Tetis', 4500, true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 4500, true, 6);
INSERT INTO public.moon VALUES (12, 'Rea', 4500, true, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 4500, true, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 4500, true, 7);
INSERT INTO public.moon VALUES (15, 'Tritón', 4500, true, 8);
INSERT INTO public.moon VALUES (16, 'Nereida', 4500, true, 8);
INSERT INTO public.moon VALUES (17, 'Caronte', 4500, true, 9);
INSERT INTO public.moon VALUES (18, 'Titán', 4500, true, 6);
INSERT INTO public.moon VALUES (19, 'Umbriel', 4500, true, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 4500, true, 7);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 'Terrestrial', 3.70, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 'Terrestrial', 8.87, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 'Terrestrial', 9.81, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 'Terrestrial', 3.71, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 'Gas Giant', 24.79, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 'Gas Giant', 10.44, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 'Ice Giant', 8.69, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 'Ice Giant', 11.15, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4500, 'Dwarf', 0.62, false, 1);
INSERT INTO public.planet VALUES (10, 'Proximus Prime', 200, 'Terrestrial', 7.55, false, 2);
INSERT INTO public.planet VALUES (11, 'Sirian Oasis', 300, 'Terrestrial', 9.12, false, 3);
INSERT INTO public.planet VALUES (12, 'Andromeda Gem', 500, 'Gas Giant', 15.28, false, 4);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'Yellow dwarf star', 3);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4850, 'Red dwarf star', 3);
INSERT INTO public.star VALUES (3, 'Sirius A', 250, 'White dwarf star', 3);
INSERT INTO public.star VALUES (4, 'Andromeda Sun', 5500, 'Yellow dwarf star', 1);
INSERT INTO public.star VALUES (5, 'Alpheratz (Sirrah)', 97, 'Giant star', 1);
INSERT INTO public.star VALUES (6, 'Beta Trianguli', 255, 'Subgiant star', 5);

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);

--
-- Name: local_group_local_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.local_group_local_group_id_seq', 3, true);

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
-- Name: local_group local_group_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.local_group
    ADD CONSTRAINT local_group_name_key UNIQUE (name);

--
-- Name: local_group local_group_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.local_group
    ADD CONSTRAINT local_group_pkey PRIMARY KEY (local_group_id);

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
-- Name: galaxy galaxy_local_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_local_group_id_fkey FOREIGN KEY (local_group_id) REFERENCES public.local_group(local_group_id);

--
-- Name: moon moon_plante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plante_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

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


