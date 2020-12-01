--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.4

-- Started on 2020-12-01 14:28:13 UTC

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

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16411)
-- Name: demotable; Type: TABLE; Schema: public; Owner: master
--

CREATE TABLE public.demotable (
    simple_id integer NOT NULL,
    somedata character varying(50) NOT NULL
);


ALTER TABLE public.demotable OWNER TO master;

--
-- TOC entry 196 (class 1259 OID 16409)
-- Name: demotable_simple_id_seq; Type: SEQUENCE; Schema: public; Owner: master
--

CREATE SEQUENCE public.demotable_simple_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demotable_simple_id_seq OWNER TO master;

--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 196
-- Name: demotable_simple_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: master
--

ALTER SEQUENCE public.demotable_simple_id_seq OWNED BY public.demotable.simple_id;


--
-- TOC entry 3680 (class 2604 OID 16414)
-- Name: demotable simple_id; Type: DEFAULT; Schema: public; Owner: master
--

ALTER TABLE ONLY public.demotable ALTER COLUMN simple_id SET DEFAULT nextval('public.demotable_simple_id_seq'::regclass);


--
-- TOC entry 3805 (class 0 OID 16411)
-- Dependencies: 197
-- Data for Name: demotable; Type: TABLE DATA; Schema: public; Owner: master
--

COPY public.demotable (simple_id, somedata) FROM stdin;
1	randomdata1
2	randomdata2
3	randomdata3
4	randomdata4
\.


--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 196
-- Name: demotable_simple_id_seq; Type: SEQUENCE SET; Schema: public; Owner: master
--

SELECT pg_catalog.setval('public.demotable_simple_id_seq', 4, true);


--
-- TOC entry 3682 (class 2606 OID 16416)
-- Name: demotable demotable_pkey; Type: CONSTRAINT; Schema: public; Owner: master
--

ALTER TABLE ONLY public.demotable
    ADD CONSTRAINT demotable_pkey PRIMARY KEY (simple_id);


--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: master
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO master;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-12-01 14:28:17 UTC

--
-- PostgreSQL database dump complete
--

