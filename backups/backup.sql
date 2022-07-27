--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.20
-- Dumped by pg_dump version 11.16 (Debian 11.16-0+deb10u1)

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
-- Name: antiflood; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.antiflood (
    chat_id character varying(14) NOT NULL,
    user_id bigint,
    count integer,
    "limit" integer
);


--
-- Name: blacklist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blacklist (
    chat_id character varying(14) NOT NULL,
    trigger text NOT NULL
);


--
-- Name: bot_blacklist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bot_blacklist (
    chat_id character varying(14) NOT NULL,
    first_name text,
    username text,
    reason text,
    date text
);


--
-- Name: bot_pms_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bot_pms_data (
    message_id integer NOT NULL,
    first_name text,
    chat_id character varying(14),
    reply_id integer,
    logger_id integer,
    result_id integer NOT NULL
);


--
-- Name: bot_starters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bot_starters (
    user_id character varying(14) NOT NULL,
    first_name text,
    date text,
    username text
);


--
-- Name: catbroadcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.catbroadcast (
    keywoard text NOT NULL,
    group_id character varying(14) NOT NULL
);


--
-- Name: filters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.filters (
    chat_id character varying(14) NOT NULL,
    keyword text NOT NULL,
    reply text,
    f_mesg_id numeric
);


--
-- Name: gban; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gban (
    chat_id character varying(14) NOT NULL,
    reason character varying(127)
);


--
-- Name: globals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.globals (
    variable character varying NOT NULL,
    value text NOT NULL
);


--
-- Name: gmute; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gmute (
    sender character varying(14) NOT NULL
);


--
-- Name: muted; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.muted (
    chat_id character varying(14) NOT NULL,
    sender character varying(14) NOT NULL
);


--
-- Name: no_log_pms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.no_log_pms (
    chat_id numeric NOT NULL
);


--
-- Name: notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notes (
    chat_id character varying(14) NOT NULL,
    keyword text NOT NULL,
    reply text,
    f_mesg_id numeric
);


--
-- Name: pmpermit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pmpermit (
    chat_id character varying(14) NOT NULL
);


--
-- Name: snip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.snip (
    keyword text NOT NULL,
    reply text,
    f_mesg_id numeric
);


--
-- Name: tede_chatbot; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tede_chatbot (
    chat_id character varying(14) NOT NULL
);


--
-- Name: welcome; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.welcome (
    chat_id character varying(14) NOT NULL,
    previous_welcome bigint,
    reply text,
    f_mesg_id numeric
);


--
-- Data for Name: antiflood; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.antiflood (chat_id, user_id, count, "limit") FROM stdin;
\.


--
-- Data for Name: blacklist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blacklist (chat_id, trigger) FROM stdin;
-1001560082201	@kurangkopiges
-1001407718745	@kurangkopiges
\.


--
-- Data for Name: bot_blacklist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bot_blacklist (chat_id, first_name, username, reason, date) FROM stdin;
\.


--
-- Data for Name: bot_pms_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bot_pms_data (message_id, first_name, chat_id, reply_id, logger_id, result_id) FROM stdin;
\.


--
-- Data for Name: bot_starters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bot_starters (user_id, first_name, date, username) FROM stdin;
\.


--
-- Data for Name: catbroadcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.catbroadcast (keywoard, group_id) FROM stdin;
\.


--
-- Data for Name: filters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.filters (chat_id, keyword, reply, f_mesg_id) FROM stdin;
\.


--
-- Data for Name: gban; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gban (chat_id, reason) FROM stdin;
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.globals (variable, value) FROM stdin;
\.


--
-- Data for Name: gmute; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gmute (sender) FROM stdin;
\.


--
-- Data for Name: muted; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.muted (chat_id, sender) FROM stdin;
\.


--
-- Data for Name: no_log_pms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.no_log_pms (chat_id) FROM stdin;
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notes (chat_id, keyword, reply, f_mesg_id) FROM stdin;
\.


--
-- Data for Name: pmpermit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pmpermit (chat_id) FROM stdin;
1883560635
820473094
1441016790
5555366638
1471690716
5419488229
\.


--
-- Data for Name: snip; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.snip (keyword, reply, f_mesg_id) FROM stdin;
\.


--
-- Data for Name: tede_chatbot; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tede_chatbot (chat_id) FROM stdin;
\.


--
-- Data for Name: welcome; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.welcome (chat_id, previous_welcome, reply, f_mesg_id) FROM stdin;
\.


--
-- Name: antiflood antiflood_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.antiflood
    ADD CONSTRAINT antiflood_pkey PRIMARY KEY (chat_id);


--
-- Name: blacklist blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blacklist
    ADD CONSTRAINT blacklist_pkey PRIMARY KEY (chat_id, trigger);


--
-- Name: bot_blacklist bot_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bot_blacklist
    ADD CONSTRAINT bot_blacklist_pkey PRIMARY KEY (chat_id);


--
-- Name: bot_pms_data bot_pms_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bot_pms_data
    ADD CONSTRAINT bot_pms_data_pkey PRIMARY KEY (message_id, result_id);


--
-- Name: bot_starters bot_starters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bot_starters
    ADD CONSTRAINT bot_starters_pkey PRIMARY KEY (user_id);


--
-- Name: catbroadcast catbroadcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.catbroadcast
    ADD CONSTRAINT catbroadcast_pkey PRIMARY KEY (keywoard, group_id);


--
-- Name: filters filters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (chat_id, keyword);


--
-- Name: gban gban_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gban
    ADD CONSTRAINT gban_pkey PRIMARY KEY (chat_id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (variable, value);


--
-- Name: gmute gmute_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gmute
    ADD CONSTRAINT gmute_pkey PRIMARY KEY (sender);


--
-- Name: muted muted_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.muted
    ADD CONSTRAINT muted_pkey PRIMARY KEY (chat_id, sender);


--
-- Name: no_log_pms no_log_pms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.no_log_pms
    ADD CONSTRAINT no_log_pms_pkey PRIMARY KEY (chat_id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (chat_id, keyword);


--
-- Name: pmpermit pmpermit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pmpermit
    ADD CONSTRAINT pmpermit_pkey PRIMARY KEY (chat_id);


--
-- Name: snip snip_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snip
    ADD CONSTRAINT snip_pkey PRIMARY KEY (keyword);


--
-- Name: tede_chatbot tede_chatbot_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tede_chatbot
    ADD CONSTRAINT tede_chatbot_pkey PRIMARY KEY (chat_id);


--
-- Name: welcome welcome_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.welcome
    ADD CONSTRAINT welcome_pkey PRIMARY KEY (chat_id);


--
-- PostgreSQL database dump complete
--

