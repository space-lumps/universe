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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id smallint NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    diameter_in_ly integer,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS smallint
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
    orbital_period numeric,
    planet_id integer,
    discovered_by character varying(30)
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
    planet_id smallint NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    galaxy_id integer,
    star_id integer,
    has_life boolean NOT NULL,
    known_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS smallint
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
    star_id smallint NOT NULL,
    name character varying(30) NOT NULL,
    star_type character varying(30),
    distance_in_ly numeric,
    solar_mass numeric,
    is_alive boolean,
    galaxy_id integer,
    constellation_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS smallint
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (2, 'Aries', NULL);
INSERT INTO public.constellation VALUES (4, 'Canis Major', NULL);
INSERT INTO public.constellation VALUES (5, 'Capricornus', NULL);
INSERT INTO public.constellation VALUES (6, 'Cassiopeia', NULL);
INSERT INTO public.constellation VALUES (7, 'Chamaeleon', NULL);
INSERT INTO public.constellation VALUES (8, 'Gemini', NULL);
INSERT INTO public.constellation VALUES (9, 'Hercules', NULL);
INSERT INTO public.constellation VALUES (10, 'Hydrus', NULL);
INSERT INTO public.constellation VALUES (11, 'Libra', NULL);
INSERT INTO public.constellation VALUES (12, 'Orion', NULL);
INSERT INTO public.constellation VALUES (13, 'Pegasus', NULL);
INSERT INTO public.constellation VALUES (14, 'Pisces', NULL);
INSERT INTO public.constellation VALUES (15, 'Sagittarius', NULL);
INSERT INTO public.constellation VALUES (16, 'Taurus', NULL);
INSERT INTO public.constellation VALUES (17, 'Ursa Major', NULL);
INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Andromeda is one of the 48 constellations listed by the 2nd-century Greco-Roman astronomer Ptolemy, and one of the 88 modern constellations');
INSERT INTO public.constellation VALUES (3, 'Cancer', 'Cancer is one of the thirteen ecliptical constellations and is located in the Northern celestial hemisphere');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 100000, 0);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'dwarf', 14000, 158000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'spiral', 220000, 2500000);
INSERT INTO public.galaxy VALUES (4, 'M82', 'starburst', 37000, 11500000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'spiral', 170000, 20870000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'unclassified', 50000, 29350000);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'spiral', 60000, 30000000);
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', 'spiral', 110000, 61000000);
INSERT INTO public.galaxy VALUES (9, 'Tadpole Galaxy', 'spiral', 280000, 420000000);
INSERT INTO public.galaxy VALUES (10, 'Hoags Object', 'ring', 1000000, 600000000);
INSERT INTO public.galaxy VALUES (11, 'Unknown', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 27.321582, 3, 'unknown');
INSERT INTO public.moon VALUES (2, 'Phobos', 0.319, 4, 'Hall');
INSERT INTO public.moon VALUES (3, 'Deimos', 1.262, 4, 'Hall');
INSERT INTO public.moon VALUES (4, 'Io', 1.769, 5, 'Galileo');
INSERT INTO public.moon VALUES (5, 'Europa', 3.551, 5, 'Galileo');
INSERT INTO public.moon VALUES (6, 'Ganymede', 7.155, 5, 'Galileo');
INSERT INTO public.moon VALUES (7, 'Callisto', 16.69, 5, 'Galileo');
INSERT INTO public.moon VALUES (8, 'Mimas', 0.942, 6, 'Herschel');
INSERT INTO public.moon VALUES (9, 'Enceladus', 1.370, 6, 'Herschel');
INSERT INTO public.moon VALUES (10, 'Tethys', 1.888, 6, 'Cassini');
INSERT INTO public.moon VALUES (11, 'Dione', 2.737, 6, 'Cassini');
INSERT INTO public.moon VALUES (12, 'Ariel', 2.520, 7, 'Lassell');
INSERT INTO public.moon VALUES (13, 'Umbriel', 4.144, 7, 'Lassell');
INSERT INTO public.moon VALUES (14, 'Titania', 8.706, 7, 'Herschel');
INSERT INTO public.moon VALUES (15, 'Oberon', 13.46, 7, 'Herschel');
INSERT INTO public.moon VALUES (16, 'Triton', 5.877, 8, 'Lassell');
INSERT INTO public.moon VALUES (17, 'Nereid', 360.14, 8, 'Kuiper');
INSERT INTO public.moon VALUES (18, 'Naiad', 0.294, 8, 'Terrile');
INSERT INTO public.moon VALUES (19, 'Charon', 6.387, 9, 'Christy');
INSERT INTO public.moon VALUES (20, 'Nix', 24.85, 9, 'Weaver, Stern, Buie, et al.');
INSERT INTO public.moon VALUES (21, 'Hydra', 38.2, 9, 'Weaver, Stern, Buie, et al.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', 1, 1, false, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', 1, 1, false, 0);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial', 1, 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', 1, 1, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', ' gas giant', 1, 1, false, 95);
INSERT INTO public.planet VALUES (6, 'Saturn', 'gas giant', 1, 1, false, 146);
INSERT INTO public.planet VALUES (7, 'Uranus', 'ice giant', 1, 1, false, 28);
INSERT INTO public.planet VALUES (8, 'Neptune', 'ice giant', 1, 1, false, 16);
INSERT INTO public.planet VALUES (9, 'Pluto', 'dwarf', 1, 1, false, 5);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'terrestrial', 1, 7, false, 0);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', 'exoplanet candidate', 1, 7, false, 0);
INSERT INTO public.planet VALUES (12, 'PA-99-N2', 'exoplanet candidate', 3, 8, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'red dwarf', 4.25, 0.1221, NULL, 1, NULL, 'the nearest star to our Sun');
INSERT INTO public.star VALUES (1, 'The Sun', 'G-type main sequence', 0.0000158, 1, true, 1, 1, 'It contains almost 99.9% of all the mass in the Solar System');
INSERT INTO public.star VALUES (2, 'Alpheratz', 'binary', 97, NULL, NULL, 11, 1, 'this star comprises both Andromeda and Pegasus');
INSERT INTO public.star VALUES (3, 'Mirach', NULL, 199.27, NULL, NULL, 11, 1, 'commonly used to find the Andromeda Galaxy');
INSERT INTO public.star VALUES (4, 'Hamal', NULL, 65.8, 1.5, NULL, 11, 2, 'the mean 50th-brightest star in the night sky');
INSERT INTO public.star VALUES (5, 'Beta Cancri', 'orange K-type giant', 290, 1.7, NULL, 11, 3, 'a cool giant with enhanced abundance of Barium');
INSERT INTO public.star VALUES (6, 'Sirius A', 'main-sequence', 8.6, 2.063, NULL, 11, 4, 'the brightest star in the night sky, has a white dwarf companion');
INSERT INTO public.star VALUES (8, 'Unknown', NULL, NULL, NULL, NULL, 11, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 17, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

