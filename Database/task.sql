--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: hash_post; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.hash_post (
    post_id bigint NOT NULL,
    hash_id bigint NOT NULL
);


ALTER TABLE public.hash_post OWNER TO dotsql1_admin;

--
-- Name: hash_post_hash_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.hash_post_hash_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hash_post_hash_id_seq OWNER TO dotsql1_admin;

--
-- Name: hash_post_hash_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.hash_post_hash_id_seq OWNED BY public.hash_post.hash_id;


--
-- Name: hash_post_post_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.hash_post_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hash_post_post_id_seq OWNER TO dotsql1_admin;

--
-- Name: hash_post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.hash_post_post_id_seq OWNED BY public.hash_post.post_id;


--
-- Name: hashtags; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.hashtags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.hashtags OWNER TO dotsql1_admin;

--
-- Name: hashtags_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.hashtags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hashtags_id_seq OWNER TO dotsql1_admin;

--
-- Name: hashtags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.hashtags_id_seq OWNED BY public.hashtags.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    post_id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO dotsql1_admin;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO dotsql1_admin;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: likes_post_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.likes_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_post_id_seq OWNER TO dotsql1_admin;

--
-- Name: likes_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.likes_post_id_seq OWNED BY public.likes.post_id;


--
-- Name: likes_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.likes_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_user_id_seq OWNER TO dotsql1_admin;

--
-- Name: likes_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.likes_user_id_seq OWNED BY public.likes.user_id;


--
-- Name: post; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.post (
    id bigint NOT NULL,
    posted_at timestamp with time zone NOT NULL,
    type_of_post character varying(255) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.post OWNER TO dotsql1_admin;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO dotsql1_admin;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.post.id;


--
-- Name: posts_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.posts_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_user_id_seq OWNER TO dotsql1_admin;

--
-- Name: posts_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.posts_user_id_seq OWNED BY public.post.user_id;


--
-- Name: user_details; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.user_details (
    id bigint NOT NULL,
    user_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    gender character varying(6) NOT NULL,
    date_of_birth date NOT NULL,
    email character varying(255),
    contact bigint NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.user_details OWNER TO dotsql1_admin;

--
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_id_seq OWNER TO dotsql1_admin;

--
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.user_details_id_seq OWNED BY public.user_details.id;


--
-- Name: hash_post post_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hash_post ALTER COLUMN post_id SET DEFAULT nextval('public.hash_post_post_id_seq'::regclass);


--
-- Name: hash_post hash_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hash_post ALTER COLUMN hash_id SET DEFAULT nextval('public.hash_post_hash_id_seq'::regclass);


--
-- Name: hashtags id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hashtags ALTER COLUMN id SET DEFAULT nextval('public.hashtags_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: likes user_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes ALTER COLUMN user_id SET DEFAULT nextval('public.likes_user_id_seq'::regclass);


--
-- Name: likes post_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes ALTER COLUMN post_id SET DEFAULT nextval('public.likes_post_id_seq'::regclass);


--
-- Name: post id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: post user_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.post ALTER COLUMN user_id SET DEFAULT nextval('public.posts_user_id_seq'::regclass);


--
-- Name: user_details id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.user_details ALTER COLUMN id SET DEFAULT nextval('public.user_details_id_seq'::regclass);


--
-- Data for Name: hash_post; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.hash_post (post_id, hash_id) FROM stdin;
2	2
2	2
1	2
2	1
\.


--
-- Data for Name: hashtags; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.hashtags (id, name) FROM stdin;
1	one
2	smile
3	fun
4	sad
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.likes (id, user_id, post_id, created_at) FROM stdin;
1	1	1	2022-03-15 10:20:42.431+05:30
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.post (id, posted_at, type_of_post, user_id) FROM stdin;
1	2022-03-15 10:19:24.645+05:30	image	1
2	2022-03-15 10:19:24.645+05:30	image	2
3	2022-03-15 00:00:00+05:30	video	2
\.


--
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.user_details (id, user_name, first_name, last_name, gender, date_of_birth, email, contact, created_at) FROM stdin;
1	string	string	string	male	2022-03-14	string	0	2022-03-14 22:10:12.254+05:30
2	str	sup	gun	female	2000-09-20	string@gmail.com	25615346	2022-03-14 22:38:51.874+05:30
3	string	string	string	male	2022-03-15	string	0	2022-03-15 10:15:52.466+05:30
\.


--
-- Name: hash_post_hash_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.hash_post_hash_id_seq', 1, false);


--
-- Name: hash_post_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.hash_post_post_id_seq', 1, false);


--
-- Name: hashtags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.hashtags_id_seq', 2, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, true);


--
-- Name: likes_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.likes_post_id_seq', 1, false);


--
-- Name: likes_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.likes_user_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.posts_id_seq', 3, true);


--
-- Name: posts_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.posts_user_id_seq', 1, false);


--
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.user_details_id_seq', 3, true);


--
-- Name: hashtags hashtags_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hashtags
    ADD CONSTRAINT hashtags_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: post posts_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- Name: hash_post hash_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hash_post
    ADD CONSTRAINT hash_id FOREIGN KEY (hash_id) REFERENCES public.hashtags(id) NOT VALID;


--
-- Name: likes post_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT post_id FOREIGN KEY (post_id) REFERENCES public.post(id) NOT VALID;


--
-- Name: hash_post post_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.hash_post
    ADD CONSTRAINT post_id FOREIGN KEY (post_id) REFERENCES public.post(id) NOT VALID;


--
-- Name: likes user_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.user_details(id) NOT VALID;


--
-- Name: post user_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.user_details(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

