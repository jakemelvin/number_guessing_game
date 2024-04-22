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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (23, 18, 368);
INSERT INTO public.games VALUES (24, 18, 901);
INSERT INTO public.games VALUES (25, 19, 118);
INSERT INTO public.games VALUES (26, 19, 683);
INSERT INTO public.games VALUES (27, 18, 759);
INSERT INTO public.games VALUES (28, 18, 67);
INSERT INTO public.games VALUES (29, 18, 592);
INSERT INTO public.games VALUES (30, 20, 16);
INSERT INTO public.games VALUES (31, 21, 321);
INSERT INTO public.games VALUES (32, 21, 531);
INSERT INTO public.games VALUES (33, 22, 9);
INSERT INTO public.games VALUES (34, 22, 151);
INSERT INTO public.games VALUES (35, 21, 341);
INSERT INTO public.games VALUES (36, 21, 315);
INSERT INTO public.games VALUES (37, 21, 411);
INSERT INTO public.games VALUES (38, 23, 331);
INSERT INTO public.games VALUES (39, 23, 613);
INSERT INTO public.games VALUES (40, 24, 665);
INSERT INTO public.games VALUES (41, 24, 276);
INSERT INTO public.games VALUES (42, 23, 918);
INSERT INTO public.games VALUES (43, 23, 794);
INSERT INTO public.games VALUES (44, 23, 770);
INSERT INTO public.games VALUES (45, 25, 890);
INSERT INTO public.games VALUES (46, 25, 54);
INSERT INTO public.games VALUES (47, 26, 435);
INSERT INTO public.games VALUES (48, 26, 373);
INSERT INTO public.games VALUES (49, 25, 262);
INSERT INTO public.games VALUES (50, 25, 945);
INSERT INTO public.games VALUES (51, 25, 607);
INSERT INTO public.games VALUES (52, 27, 485);
INSERT INTO public.games VALUES (53, 27, 882);
INSERT INTO public.games VALUES (54, 28, 774);
INSERT INTO public.games VALUES (55, 28, 247);
INSERT INTO public.games VALUES (56, 27, 560);
INSERT INTO public.games VALUES (57, 27, 936);
INSERT INTO public.games VALUES (58, 27, 825);
INSERT INTO public.games VALUES (59, 29, 291);
INSERT INTO public.games VALUES (60, 29, 164);
INSERT INTO public.games VALUES (61, 30, 303);
INSERT INTO public.games VALUES (62, 30, 820);
INSERT INTO public.games VALUES (63, 29, 713);
INSERT INTO public.games VALUES (64, 29, 963);
INSERT INTO public.games VALUES (65, 29, 964);
INSERT INTO public.games VALUES (66, 31, 799);
INSERT INTO public.games VALUES (67, 31, 751);
INSERT INTO public.games VALUES (68, 32, 842);
INSERT INTO public.games VALUES (69, 32, 811);
INSERT INTO public.games VALUES (70, 31, 148);
INSERT INTO public.games VALUES (71, 31, 176);
INSERT INTO public.games VALUES (72, 31, 948);
INSERT INTO public.games VALUES (73, 33, 201);
INSERT INTO public.games VALUES (74, 33, 114);
INSERT INTO public.games VALUES (75, 34, 583);
INSERT INTO public.games VALUES (76, 34, 170);
INSERT INTO public.games VALUES (77, 33, 904);
INSERT INTO public.games VALUES (78, 33, 868);
INSERT INTO public.games VALUES (79, 33, 542);
INSERT INTO public.games VALUES (80, 35, 546);
INSERT INTO public.games VALUES (81, 35, 109);
INSERT INTO public.games VALUES (82, 36, 458);
INSERT INTO public.games VALUES (83, 36, 190);
INSERT INTO public.games VALUES (84, 35, 924);
INSERT INTO public.games VALUES (85, 35, 772);
INSERT INTO public.games VALUES (86, 35, 838);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (18, 'user_1713806612121');
INSERT INTO public.players VALUES (19, 'user_1713806612120');
INSERT INTO public.players VALUES (20, 'Jake');
INSERT INTO public.players VALUES (21, 'user_1713806719653');
INSERT INTO public.players VALUES (22, 'user_1713806719652');
INSERT INTO public.players VALUES (23, 'user_1713806797191');
INSERT INTO public.players VALUES (24, 'user_1713806797190');
INSERT INTO public.players VALUES (25, 'user_1713806843133');
INSERT INTO public.players VALUES (26, 'user_1713806843132');
INSERT INTO public.players VALUES (27, 'user_1713806867989');
INSERT INTO public.players VALUES (28, 'user_1713806867988');
INSERT INTO public.players VALUES (29, 'user_1713806949055');
INSERT INTO public.players VALUES (30, 'user_1713806949054');
INSERT INTO public.players VALUES (31, 'user_1713806964241');
INSERT INTO public.players VALUES (32, 'user_1713806964240');
INSERT INTO public.players VALUES (33, 'user_1713806998937');
INSERT INTO public.players VALUES (34, 'user_1713806998936');
INSERT INTO public.players VALUES (35, 'user_1713807041698');
INSERT INTO public.players VALUES (36, 'user_1713807041697');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 86, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

