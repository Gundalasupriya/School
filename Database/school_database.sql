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
-- Name: classes; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.classes (
    class_id bigint NOT NULL,
    class_name character varying(50) NOT NULL
);


ALTER TABLE public.classes OWNER TO dotsql1_admin;

--
-- Name: classes_class_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.classes_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classes_class_id_seq OWNER TO dotsql1_admin;

--
-- Name: classes_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.classes_class_id_seq OWNED BY public.classes.class_id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.student (
    student_id bigint NOT NULL,
    first_name character varying(55) NOT NULL,
    last_name character varying(55) NOT NULL,
    gender character varying(6) NOT NULL,
    date_of_birth date NOT NULL,
    address character varying(255) NOT NULL,
    parent_mobile bigint NOT NULL,
    email character varying(255),
    join_date date NOT NULL,
    class_id bigint NOT NULL
);


ALTER TABLE public.student OWNER TO dotsql1_admin;

--
-- Name: student_student_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.student_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_student_id_seq OWNER TO dotsql1_admin;

--
-- Name: student_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;


--
-- Name: student_subjects; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.student_subjects (
    student_id bigint NOT NULL,
    sub_id bigint NOT NULL
);


ALTER TABLE public.student_subjects OWNER TO dotsql1_admin;

--
-- Name: student_teacher; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.student_teacher (
    student_id bigint NOT NULL,
    teacher_id bigint NOT NULL
);


ALTER TABLE public.student_teacher OWNER TO dotsql1_admin;

--
-- Name: subjects; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.subjects (
    sub_id bigint NOT NULL,
    sub_name character varying(50) NOT NULL
);


ALTER TABLE public.subjects OWNER TO dotsql1_admin;

--
-- Name: subjects_sub_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.subjects_sub_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_sub_id_seq OWNER TO dotsql1_admin;

--
-- Name: subjects_sub_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.subjects_sub_id_seq OWNED BY public.subjects.sub_id;


--
-- Name: teacher; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.teacher (
    teacher_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    gender character varying(6) NOT NULL,
    "birth_day " date NOT NULL,
    mobile bigint NOT NULL,
    address character varying(255) NOT NULL,
    date_of_join date NOT NULL,
    email character varying(255),
    sub_id bigint NOT NULL
);


ALTER TABLE public.teacher OWNER TO dotsql1_admin;

--
-- Name: teacher_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: dotsql1_admin
--

CREATE SEQUENCE public.teacher_teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_teacher_id_seq OWNER TO dotsql1_admin;

--
-- Name: teacher_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dotsql1_admin
--

ALTER SEQUENCE public.teacher_teacher_id_seq OWNED BY public.teacher.teacher_id;


--
-- Name: classes class_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.classes ALTER COLUMN class_id SET DEFAULT nextval('public.classes_class_id_seq'::regclass);


--
-- Name: student student_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);


--
-- Name: subjects sub_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.subjects ALTER COLUMN sub_id SET DEFAULT nextval('public.subjects_sub_id_seq'::regclass);


--
-- Name: teacher teacher_id; Type: DEFAULT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.teacher ALTER COLUMN teacher_id SET DEFAULT nextval('public.teacher_teacher_id_seq'::regclass);


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.classes (class_id, class_name) FROM stdin;
1	nursery
2	Inter
3	btech
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.student (student_id, first_name, last_name, gender, date_of_birth, address, parent_mobile, email, join_date, class_id) FROM stdin;
2	ruchitha	ergamreddy	Female	2022-03-17	pulivendra	3541542	string@gmail.com	2022-03-17	1
3	supriya	gundala	female	2000-09-20	suryapet	8639094604	supriya@gmail.com	2021-12-27	3
4	string	string	male	2022-03-17	string	0	string	2022-03-17	1
\.


--
-- Data for Name: student_subjects; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.student_subjects (student_id, sub_id) FROM stdin;
2	1
2	1
\.


--
-- Data for Name: student_teacher; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.student_teacher (student_id, teacher_id) FROM stdin;
2	1
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.subjects (sub_id, sub_name) FROM stdin;
1	maths
2	Biology
3	English
\.


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.teacher (teacher_id, first_name, last_name, gender, "birth_day ", mobile, address, date_of_join, email, sub_id) FROM stdin;
1	ruchitha	ergamreddy	female	1995-07-03	45245425	hyd	1997-09-03	string@gmail.com	1
2	thanami	peta	female	1995-07-03	45245425	hyd	1997-09-03	string@gmail.com	1
3	ravali	madari	female	2000-09-20	567889	karim	2021-12-22	ravali@gmail.com	1
\.


--
-- Name: classes_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.classes_class_id_seq', 1, false);


--
-- Name: student_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.student_student_id_seq', 4, true);


--
-- Name: subjects_sub_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.subjects_sub_id_seq', 1, false);


--
-- Name: teacher_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dotsql1_admin
--

SELECT pg_catalog.setval('public.teacher_teacher_id_seq', 1, false);


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (class_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (sub_id);


--
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id);


--
-- Name: student class_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT class_id FOREIGN KEY (class_id) REFERENCES public.classes(class_id) NOT VALID;


--
-- Name: student_subjects student_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student_subjects
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: student_teacher student_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: student_subjects sub_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student_subjects
    ADD CONSTRAINT sub_id FOREIGN KEY (sub_id) REFERENCES public.subjects(sub_id) NOT VALID;


--
-- Name: student_teacher teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT teacher_id FOREIGN KEY (teacher_id) REFERENCES public.teacher(teacher_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

