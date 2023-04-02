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
    weight_in_kilo numeric NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    species integer
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
    weight_in_kilo numeric NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    species integer,
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
    weight_in_kilo numeric NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    species integer,
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
    weight_in_kilo numeric NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    species integer,
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
-- Name: table4; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table4 (
    hello integer,
    hello2 integer,
    table4_id integer NOT NULL,
    nevernull integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.table4 OWNER TO freecodecamp;

--
-- Name: table4_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table4_id_seq OWNER TO freecodecamp;

--
-- Name: table4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table4_id_seq OWNED BY public.table4.table4_id;


--
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    hello integer,
    hello2 integer,
    table5_id integer NOT NULL,
    nevernull integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_id_seq OWNED BY public.table5.table5_id;


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
-- Name: table4 table4_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table4 ALTER COLUMN table4_id SET DEFAULT nextval('public.table4_id_seq'::regclass);


--
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1000, 'BigTimothy', 1, 'BigTimothy is bigger than Timothy', true, true, 4);
INSERT INTO public.galaxy VALUES (1023400, 'BigJacob', 2, 'BigJacob is bigger than Jacob', true, false, 9);
INSERT INTO public.galaxy VALUES (2, 'BigJohn', 3, 'BigJohn is bigger than John', false, false, 97);
INSERT INTO public.galaxy VALUES (9, 'BigMary', 4, 'BigMary is bigger than Mary', false, true, 1);
INSERT INTO public.galaxy VALUES (93, 'BigJoseph', 5, 'BigJoseph is bigger than Joseph', false, false, 1000);
INSERT INTO public.galaxy VALUES (933, 'BigLana', 6, 'BigLana is bigger than Lana', false, true, 400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1000, 'A', 1, 'A', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'B', 2, 'B', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'C', 3, 'C', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'D', 4, 'D', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'E', 5, 'E', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'F', 6, 'F', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'G', 7, 'G', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'H', 8, 'H', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'I', 9, 'I', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'J', 10, 'J', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'K', 11, 'K', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'L', 12, 'L', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'M', 13, 'M', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'N', 14, 'N', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'O', 15, 'O', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'P', 16, 'P', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'Q', 17, 'Q', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'R', 18, 'R', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'S', 19, 'S', false, true, 0, NULL);
INSERT INTO public.moon VALUES (1000, 'T', 20, 'T', false, true, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (23, 'Tim', 1, 'Timothys first son', true, true, 2, NULL);
INSERT INTO public.planet VALUES (21, 'Tom', 2, 'Timothys second son', true, false, 5, NULL);
INSERT INTO public.planet VALUES (93, 'Jake', 3, 'Jacobs first son', false, true, 22, NULL);
INSERT INTO public.planet VALUES (11, 'Blake', 4, 'Jacobs second son', true, false, 6, NULL);
INSERT INTO public.planet VALUES (9223, 'Ron', 5, 'Johns first son', true, true, 64, NULL);
INSERT INTO public.planet VALUES (13851, 'Jon', 6, 'Johns second son', false, false, 1, NULL);
INSERT INTO public.planet VALUES (92243, 'Ron', 7, 'Marys first son', true, true, 634, NULL);
INSERT INTO public.planet VALUES (131, 'Meradith', 8, 'Marys second son', false, true, 163, NULL);
INSERT INTO public.planet VALUES (92, 'Joey', 9, 'Josephs first son', false, true, 1634, NULL);
INSERT INTO public.planet VALUES (1331, 'Jo', 10, 'Josephs second son', false, true, 1263, NULL);
INSERT INTO public.planet VALUES (932, 'Buttercup', 11, 'Lanas first son', false, false, 14, NULL);
INSERT INTO public.planet VALUES (31, 'Krystal', 12, 'Lanas second son', false, false, 13, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1000, 'Timothy', 1, 'Timothy is just a star', true, true, 4, NULL);
INSERT INTO public.star VALUES (1023400, 'Jacob', 2, 'Jacob is just a star', true, false, 9, NULL);
INSERT INTO public.star VALUES (2, 'John', 3, 'John is just a star', false, false, 97, NULL);
INSERT INTO public.star VALUES (9, 'Mary', 4, 'Mary is just a star', false, true, 1, NULL);
INSERT INTO public.star VALUES (93, 'Joseph', 5, 'Joseph is just a star', false, false, 1000, NULL);
INSERT INTO public.star VALUES (933, 'Lana', 6, 'Lanais just a star', false, true, 400, NULL);


--
-- Data for Name: table4; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table4 VALUES (1, 2, 1, 1, 'One');
INSERT INTO public.table4 VALUES (3, 4, 2, 1, 'Two');
INSERT INTO public.table4 VALUES (5, 6, 3, 1, 'Three');


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 2, 1, 1, 'One');
INSERT INTO public.table5 VALUES (3, 4, 2, 1, 'Two');
INSERT INTO public.table5 VALUES (5, 6, 3, 1, 'Three');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: table4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table4_id_seq', 3, true);


--
-- Name: table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table4 table4_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table4
    ADD CONSTRAINT table4_name_key UNIQUE (name);


--
-- Name: table4 table4_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table4
    ADD CONSTRAINT table4_pkey PRIMARY KEY (table4_id);


--
-- Name: table5 table5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


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

