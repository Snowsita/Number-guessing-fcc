--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)

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
    user_id integer,
    number_of_guesses integer,
    game_id integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    user_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_game_id_seq OWNER TO freecodecamp;

--
-- Name: users_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_game_id_seq OWNED BY public.users.game_id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN game_id SET DEFAULT nextval('public.users_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (205, 2, 165);
INSERT INTO public.games VALUES (205, 1, 166);
INSERT INTO public.games VALUES (205, 2, 167);
INSERT INTO public.games VALUES (206, 2, 168);
INSERT INTO public.games VALUES (206, 2, 169);
INSERT INTO public.games VALUES (207, 2, 170);
INSERT INTO public.games VALUES (207, 4, 171);
INSERT INTO public.games VALUES (206, 5, 172);
INSERT INTO public.games VALUES (206, 5, 173);
INSERT INTO public.games VALUES (206, 3, 174);
INSERT INTO public.games VALUES (208, 6, 175);
INSERT INTO public.games VALUES (208, 6, 176);
INSERT INTO public.games VALUES (209, 3, 177);
INSERT INTO public.games VALUES (209, 6, 178);
INSERT INTO public.games VALUES (208, 5, 179);
INSERT INTO public.games VALUES (208, 7, 180);
INSERT INTO public.games VALUES (208, 6, 181);
INSERT INTO public.games VALUES (210, 5, 182);
INSERT INTO public.games VALUES (210, 3, 183);
INSERT INTO public.games VALUES (211, 3, 184);
INSERT INTO public.games VALUES (211, 2, 185);
INSERT INTO public.games VALUES (210, 7, 186);
INSERT INTO public.games VALUES (210, 7, 187);
INSERT INTO public.games VALUES (210, 3, 188);
INSERT INTO public.games VALUES (212, 2, 189);
INSERT INTO public.games VALUES (212, 4, 190);
INSERT INTO public.games VALUES (213, 6, 191);
INSERT INTO public.games VALUES (213, 6, 192);
INSERT INTO public.games VALUES (212, 7, 193);
INSERT INTO public.games VALUES (212, 7, 194);
INSERT INTO public.games VALUES (212, 6, 195);
INSERT INTO public.games VALUES (214, 3, 196);
INSERT INTO public.games VALUES (214, 4, 197);
INSERT INTO public.games VALUES (215, 3, 198);
INSERT INTO public.games VALUES (215, 2, 199);
INSERT INTO public.games VALUES (214, 6, 200);
INSERT INTO public.games VALUES (214, 7, 201);
INSERT INTO public.games VALUES (214, 3, 202);
INSERT INTO public.games VALUES (216, 4, 203);
INSERT INTO public.games VALUES (216, 6, 204);
INSERT INTO public.games VALUES (217, 2, 205);
INSERT INTO public.games VALUES (217, 6, 206);
INSERT INTO public.games VALUES (216, 5, 207);
INSERT INTO public.games VALUES (216, 6, 208);
INSERT INTO public.games VALUES (216, 6, 209);
INSERT INTO public.games VALUES (218, 4, 210);
INSERT INTO public.games VALUES (218, 3, 211);
INSERT INTO public.games VALUES (219, 4, 212);
INSERT INTO public.games VALUES (219, 6, 213);
INSERT INTO public.games VALUES (218, 7, 214);
INSERT INTO public.games VALUES (218, 7, 215);
INSERT INTO public.games VALUES (218, 6, 216);
INSERT INTO public.games VALUES (220, 5, 217);
INSERT INTO public.games VALUES (220, 5, 218);
INSERT INTO public.games VALUES (221, 2, 219);
INSERT INTO public.games VALUES (221, 2, 220);
INSERT INTO public.games VALUES (220, 6, 221);
INSERT INTO public.games VALUES (220, 7, 222);
INSERT INTO public.games VALUES (220, 4, 223);
INSERT INTO public.games VALUES (222, 5, 224);
INSERT INTO public.games VALUES (222, 4, 225);
INSERT INTO public.games VALUES (223, 3, 226);
INSERT INTO public.games VALUES (223, 2, 227);
INSERT INTO public.games VALUES (222, 5, 228);
INSERT INTO public.games VALUES (222, 3, 229);
INSERT INTO public.games VALUES (222, 5, 230);
INSERT INTO public.games VALUES (224, 829, 231);
INSERT INTO public.games VALUES (224, 700, 232);
INSERT INTO public.games VALUES (225, 997, 233);
INSERT INTO public.games VALUES (225, 54, 234);
INSERT INTO public.games VALUES (224, 886, 235);
INSERT INTO public.games VALUES (224, 670, 236);
INSERT INTO public.games VALUES (224, 186, 237);
INSERT INTO public.games VALUES (226, 493, 238);
INSERT INTO public.games VALUES (226, 133, 239);
INSERT INTO public.games VALUES (227, 103, 240);
INSERT INTO public.games VALUES (227, 301, 241);
INSERT INTO public.games VALUES (226, 444, 242);
INSERT INTO public.games VALUES (226, 456, 243);
INSERT INTO public.games VALUES (226, 819, 244);
INSERT INTO public.games VALUES (228, 533, 245);
INSERT INTO public.games VALUES (228, 271, 246);
INSERT INTO public.games VALUES (229, 1000, 247);
INSERT INTO public.games VALUES (229, 82, 248);
INSERT INTO public.games VALUES (228, 709, 249);
INSERT INTO public.games VALUES (228, 297, 250);
INSERT INTO public.games VALUES (228, 703, 251);
INSERT INTO public.games VALUES (230, 260, 252);
INSERT INTO public.games VALUES (230, 513, 253);
INSERT INTO public.games VALUES (231, 232, 254);
INSERT INTO public.games VALUES (231, 627, 255);
INSERT INTO public.games VALUES (230, 434, 256);
INSERT INTO public.games VALUES (230, 30, 257);
INSERT INTO public.games VALUES (230, 10, 258);
INSERT INTO public.games VALUES (232, 344, 259);
INSERT INTO public.games VALUES (232, 549, 260);
INSERT INTO public.games VALUES (233, 754, 261);
INSERT INTO public.games VALUES (233, 249, 262);
INSERT INTO public.games VALUES (232, 228, 263);
INSERT INTO public.games VALUES (232, 396, 264);
INSERT INTO public.games VALUES (232, 61, 265);
INSERT INTO public.games VALUES (234, 780, 266);
INSERT INTO public.games VALUES (234, 630, 267);
INSERT INTO public.games VALUES (235, 183, 268);
INSERT INTO public.games VALUES (235, 413, 269);
INSERT INTO public.games VALUES (234, 852, 270);
INSERT INTO public.games VALUES (234, 409, 271);
INSERT INTO public.games VALUES (234, 363, 272);
INSERT INTO public.games VALUES (205, 15, 273);
INSERT INTO public.games VALUES (236, 402, 274);
INSERT INTO public.games VALUES (236, 199, 275);
INSERT INTO public.games VALUES (237, 674, 276);
INSERT INTO public.games VALUES (237, 487, 277);
INSERT INTO public.games VALUES (236, 546, 278);
INSERT INTO public.games VALUES (236, 112, 279);
INSERT INTO public.games VALUES (236, 225, 280);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Snow', 205, 133);
INSERT INTO public.users VALUES ('user_1742614926186', 206, 134);
INSERT INTO public.users VALUES ('user_1742614926185', 207, 135);
INSERT INTO public.users VALUES ('user_1742614963188', 208, 136);
INSERT INTO public.users VALUES ('user_1742614963187', 209, 137);
INSERT INTO public.users VALUES ('user_1742615007661', 210, 138);
INSERT INTO public.users VALUES ('user_1742615007660', 211, 139);
INSERT INTO public.users VALUES ('user_1742615036431', 212, 140);
INSERT INTO public.users VALUES ('user_1742615036430', 213, 141);
INSERT INTO public.users VALUES ('user_1742615061372', 214, 142);
INSERT INTO public.users VALUES ('user_1742615061371', 215, 143);
INSERT INTO public.users VALUES ('user_1742615096117', 216, 144);
INSERT INTO public.users VALUES ('user_1742615096116', 217, 145);
INSERT INTO public.users VALUES ('user_1742615115725', 218, 146);
INSERT INTO public.users VALUES ('user_1742615115724', 219, 147);
INSERT INTO public.users VALUES ('user_1742615134734', 220, 148);
INSERT INTO public.users VALUES ('user_1742615134733', 221, 149);
INSERT INTO public.users VALUES ('user_1742615166452', 222, 150);
INSERT INTO public.users VALUES ('user_1742615166451', 223, 151);
INSERT INTO public.users VALUES ('user_1742615202837', 224, 152);
INSERT INTO public.users VALUES ('user_1742615202836', 225, 153);
INSERT INTO public.users VALUES ('user_1742615287220', 226, 154);
INSERT INTO public.users VALUES ('user_1742615287219', 227, 155);
INSERT INTO public.users VALUES ('user_1742615326126', 228, 156);
INSERT INTO public.users VALUES ('user_1742615326125', 229, 157);
INSERT INTO public.users VALUES ('user_1742615335983', 230, 158);
INSERT INTO public.users VALUES ('user_1742615335982', 231, 159);
INSERT INTO public.users VALUES ('user_1742615346065', 232, 160);
INSERT INTO public.users VALUES ('user_1742615346064', 233, 161);
INSERT INTO public.users VALUES ('user_1742615373061', 234, 162);
INSERT INTO public.users VALUES ('user_1742615373060', 235, 163);
INSERT INTO public.users VALUES ('user_1742615494440', 236, 164);
INSERT INTO public.users VALUES ('user_1742615494439', 237, 165);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 280, true);


--
-- Name: users_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_game_id_seq', 165, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 237, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

