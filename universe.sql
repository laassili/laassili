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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    galaxy_types character varying(20) NOT NULL,
    description text,
    stars numeric
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
    age integer NOT NULL,
    moon_types character varying(20) NOT NULL,
    description text,
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
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    planet_types character varying(20) NOT NULL,
    description text,
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
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    star_types character varying(20) NOT NULL,
    description text,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    universe_types character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 45500, 't1', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'g2', 4567500, 't1', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'g3', 86905, 't1', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'g4', 45500, 't1', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'g5', 4567500, 't1', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'g6', 86905, 't1', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (2, 'm2', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (3, 'm3', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (4, 'm4', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (5, 'm5', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (6, 'm6', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (7, 'm7', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (8, 'm8', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (9, 'm9', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (10, 'm10', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (11, 'm11', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (12, 'm12', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (13, 'm13', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (14, 'm14', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (15, 'm15', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (16, 'm16', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (17, 'm17', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (18, 'm18', 798506, 't4', NULL, false, 1);
INSERT INTO public.moon VALUES (19, 'm19', 5663, 't4', NULL, false, 3);
INSERT INTO public.moon VALUES (20, 'm20', 76849, 't4', NULL, false, 2);
INSERT INTO public.moon VALUES (21, 'm21', 798506, 't4', NULL, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 65758, 't3', NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'p2', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (3, 'p3', 9845, 't3', NULL, false, 3);
INSERT INTO public.planet VALUES (4, 'p4', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (5, 'p5', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (6, 'p6', 9845, 't3', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'p7', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (8, 'p8', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (9, 'p9', 9845, 't3', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'p10', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (11, 'p11', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'p12', 9845, 't3', NULL, false, 1);
INSERT INTO public.planet VALUES (13, 'p13', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (14, 'p14', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (15, 'p15', 9845, 't3', NULL, false, 1);
INSERT INTO public.planet VALUES (16, 'p16', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (17, 'p17', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (18, 'p18', 9845, 't3', NULL, false, 1);
INSERT INTO public.planet VALUES (19, 'p19', 65758, 't3', NULL, true, 3);
INSERT INTO public.planet VALUES (20, 'p20', 45500, 't3', NULL, false, 2);
INSERT INTO public.planet VALUES (21, 'p21', 9845, 't3', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 7867, 't2', NULL, false, 3);
INSERT INTO public.star VALUES (2, 's2', 45500, 't2', NULL, false, 2);
INSERT INTO public.star VALUES (3, 's3', 5474, 't2', NULL, false, 1);
INSERT INTO public.star VALUES (4, 's4', 7867, 't2', NULL, false, 3);
INSERT INTO public.star VALUES (5, 's5', 45500, 't2', NULL, false, 2);
INSERT INTO public.star VALUES (6, 's6', 5474, 't2', NULL, false, 1);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'u1', 45500, 'u1', NULL);
INSERT INTO public.universe VALUES (2, 'u2', 4567500, 'u1', NULL);
INSERT INTO public.universe VALUES (3, 'u3', 86905, 'u1', NULL);
INSERT INTO public.universe VALUES (4, 'u4', 45500, 'u1', NULL);
INSERT INTO public.universe VALUES (5, 'u5', 4567500, 'u1', NULL);
INSERT INTO public.universe VALUES (6, 'u6', 86905, 'u1', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 6, true);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

