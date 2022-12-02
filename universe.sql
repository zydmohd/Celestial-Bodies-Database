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
    name character varying(30) NOT NULL,
    magnitude integer,
    distance numeric,
    more_info text
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
    numeral integer,
    planet_id integer,
    more_info text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_data (
    data text NOT NULL,
    moon_id integer NOT NULL,
    more_info1 text,
    more_info2 text,
    more_info3 text,
    moon_data_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.moon_data OWNER TO freecodecamp;

--
-- Name: moon_data_moon_data_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_data_moon_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_data_moon_data_id_seq OWNER TO freecodecamp;

--
-- Name: moon_data_moon_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_data_moon_data_id_seq OWNED BY public.moon_data.moon_data_id;


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
    period_days integer,
    has_moon boolean,
    has_more_than_amoon boolean,
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
    distance integer,
    galaxy_id integer,
    more_info text
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_data moon_data_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_data ALTER COLUMN moon_data_id SET DEFAULT nextval('public.moon_data_moon_data_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Large Magellanic CLOUD', 1, 160, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', -7, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 3, 200, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 5, 196, NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 2, 300, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bodes', 3, 200, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Io', 2, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Europa', 2, 3, NULL);
INSERT INTO public.moon VALUES (4, 'HG123', 1, 2, NULL);
INSERT INTO public.moon VALUES (5, 'HG1423', 1, 2, NULL);
INSERT INTO public.moon VALUES (6, 'HG15423', 1, 3, NULL);
INSERT INTO public.moon VALUES (7, 'HG1523', 1, 3, NULL);
INSERT INTO public.moon VALUES (8, 'HG5423', 1, 4, NULL);
INSERT INTO public.moon VALUES (9, 'H85623', 1, 4, NULL);
INSERT INTO public.moon VALUES (10, 'A85623', 1, 5, NULL);
INSERT INTO public.moon VALUES (11, 'A86523', 1, 5, NULL);
INSERT INTO public.moon VALUES (12, 'AH5523', 1, 5, NULL);
INSERT INTO public.moon VALUES (13, 'AJ55523', 1, 6, NULL);
INSERT INTO public.moon VALUES (14, 'AJ59523', 1, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Af9523', 1, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Afj523', 1, 7, NULL);
INSERT INTO public.moon VALUES (17, 'AfO523', 1, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Afoi23', 1, 8, NULL);
INSERT INTO public.moon VALUES (19, 'Ahgi23', 1, 9, NULL);
INSERT INTO public.moon VALUES (20, 'Akj23', 1, 9, NULL);
INSERT INTO public.moon VALUES (21, 'Akdj23', 1, 10, NULL);
INSERT INTO public.moon VALUES (22, 'Akdsj23', 1, 10, NULL);
INSERT INTO public.moon VALUES (23, 'Akdsddj23', 1, 11, NULL);
INSERT INTO public.moon VALUES (24, 'Akdsj23', 1, 11, NULL);


--
-- Data for Name: moon_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_data VALUES ('Moon', 1, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon_data VALUES ('Moon', 2, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon_data VALUES ('Moon', 3, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365, true, false, 1);
INSERT INTO public.planet VALUES (2, 'MRCURY', 88, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupyter', 52, true, true, 1);
INSERT INTO public.planet VALUES (4, 'HSR256', 100, true, true, 6);
INSERT INTO public.planet VALUES (5, 'Hiu521', 56, true, true, 5);
INSERT INTO public.planet VALUES (6, 'K9870', 88, true, true, 4);
INSERT INTO public.planet VALUES (7, 'FGHH58', 44, true, true, 3);
INSERT INTO public.planet VALUES (8, 'KLM456', 65, true, true, 6);
INSERT INTO public.planet VALUES (9, 'SFG235', 44, true, true, 6);
INSERT INTO public.planet VALUES (10, 'KJM652', 36, true, true, 5);
INSERT INTO public.planet VALUES (11, 'JH965', 55, true, true, 5);
INSERT INTO public.planet VALUES (12, 'HJI832', 22, true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 2, NULL);
INSERT INTO public.star VALUES (2, 'Sirrus', 160, 1, NULL);
INSERT INTO public.star VALUES (3, 'BAT99-7', 180, 3, NULL);
INSERT INTO public.star VALUES (4, 'Bx231', 200, 3, NULL);
INSERT INTO public.star VALUES (5, 'hgb87', 196, 4, NULL);
INSERT INTO public.star VALUES (6, 'Bfv125', 160, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_data_moon_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_data_moon_data_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_data moon_data_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_data
    ADD CONSTRAINT moon_data_moon_id_key UNIQUE (moon_id);


--
-- Name: moon_data moon_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_data
    ADD CONSTRAINT moon_data_pkey PRIMARY KEY (moon_data_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon_data fkey_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_data
    ADD CONSTRAINT fkey_moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

