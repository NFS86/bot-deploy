--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.20
-- Dumped by pg_dump version 11.17 (Debian 11.17-0+deb10u1)

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
-- Name: afk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.afk (
    user_id character varying(14) NOT NULL,
    is_afk boolean,
    reason text
);


--
-- Name: gban; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gban (
    sender character varying(14) NOT NULL
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
-- Name: no_log_pms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.no_log_pms (
    chat_id numeric NOT NULL
);


--
-- Name: pmpermit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pmpermit (
    chat_id character varying(14) NOT NULL
);


--
-- Data for Name: afk; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.afk (user_id, is_afk, reason) FROM stdin;
0	f	
\.


--
-- Data for Name: gban; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gban (sender) FROM stdin;
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.globals (variable, value) FROM stdin;
unapproved_msg	╔════════════════════╗\n     ⛑ 𝗔𝗧𝗧𝗘𝗡𝗧𝗜𝗢𝗡 𝗣𝗟𝗘𝗔𝗦𝗘 ⛑\n╚════════════════════╝\n🇮🇩\n• Saya belum menyetujui anda untuk PM.\n• Tunggu sampai saya menyetujui PM anda.\n• Jangan Spam Chat atau anda akan otomatis diblokir.\n🇺🇸\n• I have not approved you to PM.\n• Wait until I approve your PM.\n• Don't Spam Chat or you will be automatically blocked.\n🇮🇳\n• मैंने आपको पीएम के लिए मंजूरी नहीं दी है.\n• रुको जब तक मैं आपके पीएम को मंजूरी नहीं देता.\n• चैट को स्पैम न करें या आप अपने आप ब्लॉक हो जाएंगे.\n🇯🇵\n• 私はあなたをPMに承認していません.\n• 私があなたのPMを承認するまで待ちます.\n• チャットをスパムしないでください。そうしないと、自動的にブロックされます.\n🇨🇳\n• 我还没有批准你PM\n• 等我批准你的 PM\n• 不要垃圾邮件聊天，否则您将被自动阻止\n🇷🇺\n• Я не одобрил вас в личку\n• Подождите, пока я не одобрю ваш PM\n• Не спамьте в чате, иначе вы будете автоматически заблокированы\n╔════════════════════╗\n    𝗣𝗲𝘀𝗮𝗻 𝗢𝘁𝗼𝗺𝗮𝘁𝗶𝘀 𝗕𝘆 -𝗨𝘀𝗲𝗿𝗕𝗼𝘁\n╚════════════════════╝
PM_LIMIT	3
\.


--
-- Data for Name: gmute; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gmute (sender) FROM stdin;
\.


--
-- Data for Name: no_log_pms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.no_log_pms (chat_id) FROM stdin;
\.


--
-- Data for Name: pmpermit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pmpermit (chat_id) FROM stdin;
1471690716
770247574
\.


--
-- Name: afk afk_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.afk
    ADD CONSTRAINT afk_pkey PRIMARY KEY (user_id);


--
-- Name: gban gban_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gban
    ADD CONSTRAINT gban_pkey PRIMARY KEY (sender);


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
-- Name: no_log_pms no_log_pms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.no_log_pms
    ADD CONSTRAINT no_log_pms_pkey PRIMARY KEY (chat_id);


--
-- Name: pmpermit pmpermit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pmpermit
    ADD CONSTRAINT pmpermit_pkey PRIMARY KEY (chat_id);


--
-- PostgreSQL database dump complete
--

