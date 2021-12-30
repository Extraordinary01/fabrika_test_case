--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: survey_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_question (
    id integer NOT NULL,
    question_text text NOT NULL,
    question_type_id integer NOT NULL,
    survey_id integer NOT NULL
);


ALTER TABLE public.survey_question OWNER TO postgres;

--
-- Name: survey_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_question_id_seq OWNER TO postgres;

--
-- Name: survey_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_question_id_seq OWNED BY public.survey_question.id;


--
-- Name: survey_questionanswerchoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_questionanswerchoice (
    id integer NOT NULL,
    answer text NOT NULL,
    question_id integer NOT NULL,
    is_correct_answer boolean NOT NULL
);


ALTER TABLE public.survey_questionanswerchoice OWNER TO postgres;

--
-- Name: survey_questionanswerchoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_questionanswerchoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_questionanswerchoice_id_seq OWNER TO postgres;

--
-- Name: survey_questionanswerchoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_questionanswerchoice_id_seq OWNED BY public.survey_questionanswerchoice.id;


--
-- Name: survey_questiontype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_questiontype (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.survey_questiontype OWNER TO postgres;

--
-- Name: survey_questiontype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_questiontype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_questiontype_id_seq OWNER TO postgres;

--
-- Name: survey_questiontype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_questiontype_id_seq OWNED BY public.survey_questiontype.id;


--
-- Name: survey_survey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_survey (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.survey_survey OWNER TO postgres;

--
-- Name: survey_survey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_survey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_survey_id_seq OWNER TO postgres;

--
-- Name: survey_survey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_survey_id_seq OWNED BY public.survey_survey.id;


--
-- Name: survey_usersanswer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_usersanswer (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    text_answer text,
    question_id integer NOT NULL
);


ALTER TABLE public.survey_usersanswer OWNER TO postgres;

--
-- Name: survey_usersanswer_choice_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_usersanswer_choice_answers (
    id integer NOT NULL,
    usersanswer_id integer NOT NULL,
    questionanswerchoice_id integer NOT NULL
);


ALTER TABLE public.survey_usersanswer_choice_answers OWNER TO postgres;

--
-- Name: survey_usersanswer_choice_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_usersanswer_choice_answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_usersanswer_choice_answers_id_seq OWNER TO postgres;

--
-- Name: survey_usersanswer_choice_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_usersanswer_choice_answers_id_seq OWNED BY public.survey_usersanswer_choice_answers.id;


--
-- Name: survey_usersanswer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_usersanswer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_usersanswer_id_seq OWNER TO postgres;

--
-- Name: survey_usersanswer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_usersanswer_id_seq OWNED BY public.survey_usersanswer.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: survey_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question ALTER COLUMN id SET DEFAULT nextval('public.survey_question_id_seq'::regclass);


--
-- Name: survey_questionanswerchoice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questionanswerchoice ALTER COLUMN id SET DEFAULT nextval('public.survey_questionanswerchoice_id_seq'::regclass);


--
-- Name: survey_questiontype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questiontype ALTER COLUMN id SET DEFAULT nextval('public.survey_questiontype_id_seq'::regclass);


--
-- Name: survey_survey id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_survey ALTER COLUMN id SET DEFAULT nextval('public.survey_survey_id_seq'::regclass);


--
-- Name: survey_usersanswer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer ALTER COLUMN id SET DEFAULT nextval('public.survey_usersanswer_id_seq'::regclass);


--
-- Name: survey_usersanswer_choice_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer_choice_answers ALTER COLUMN id SET DEFAULT nextval('public.survey_usersanswer_choice_answers_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add Вопрос	9	add_question
34	Can change Вопрос	9	change_question
35	Can delete Вопрос	9	delete_question
36	Can view Вопрос	9	view_question
37	Can add Тип вопроса	10	add_questiontype
38	Can change Тип вопроса	10	change_questiontype
39	Can delete Тип вопроса	10	delete_questiontype
40	Can view Тип вопроса	10	view_questiontype
41	Can add Опрос	11	add_survey
42	Can change Опрос	11	change_survey
43	Can delete Опрос	11	delete_survey
44	Can view Опрос	11	view_survey
45	Can add question answer choice	12	add_questionanswerchoice
46	Can change question answer choice	12	change_questionanswerchoice
47	Can delete question answer choice	12	delete_questionanswerchoice
48	Can view question answer choice	12	view_questionanswerchoice
49	Can add Ответ пользователя	13	add_usersanswer
50	Can change Ответ пользователя	13	change_usersanswer
51	Can delete Ответ пользователя	13	delete_usersanswer
52	Can view Ответ пользователя	13	view_usersanswer
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$iPomIDEagSpC$MURNZnaylucbpOqjQNMm/0aXQH/fofFhBNojzsOsf6Q=	2021-12-30 09:23:17.772997+05	t	admin				t	t	2021-12-30 09:12:29.331975+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-30 09:27:22.241147+05	1	Тестовый опрос	1	[{"added": {}}]	11	1
2	2021-12-30 09:45:00.061447+05	1	Ответ текстом	1	[{"added": {}}]	10	1
3	2021-12-30 09:45:14.535938+05	2	Ответ с выбором одного варианта	1	[{"added": {}}]	10	1
4	2021-12-30 09:45:44.982633+05	3	Ответ с выбором нескольких вариантов	1	[{"added": {}}]	10	1
5	2021-12-30 09:46:41.917964+05	1	Когда был создан фреймворк Django ?	1	[{"added": {}}]	9	1
6	2021-12-30 09:47:38.259758+05	1	QuestionAnswerChoice object (1)	1	[{"added": {}}]	12	1
7	2021-12-30 09:47:43.082785+05	2	QuestionAnswerChoice object (2)	1	[{"added": {}}]	12	1
8	2021-12-30 09:47:48.409945+05	3	QuestionAnswerChoice object (3)	1	[{"added": {}}]	12	1
9	2021-12-30 09:47:53.578601+05	4	QuestionAnswerChoice object (4)	1	[{"added": {}}]	12	1
10	2021-12-30 10:21:24.039308+05	2	Тестовый вопрос с текстовым ответом	1	[{"added": {}}]	9	1
11	2021-12-30 12:18:57.798211+05	2	Тестовый устаревший опрос	1	[{"added": {}}]	11	1
12	2021-12-30 12:19:22.315425+05	2	Тестовый устаревший опрос	2	[{"changed": {"fields": ["end_date"]}}]	11	1
13	2021-12-30 12:23:28.54983+05	2	Тестовый устаревший опрос	2	[{"changed": {"fields": ["end_date"]}}]	11	1
14	2021-12-30 12:24:45.222947+05	2	Тестовый устаревший опрос	2	[{"changed": {"fields": ["end_date"]}}]	11	1
15	2021-12-30 12:25:04.304338+05	2	Тестовый устаревший опрос	2	[{"changed": {"fields": ["end_date"]}}]	11	1
16	2021-12-30 15:22:48.493476+05	6	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
17	2021-12-30 15:22:48.502832+05	5	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
18	2021-12-30 15:22:48.511385+05	4	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
19	2021-12-30 15:22:48.519726+05	3	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
20	2021-12-30 15:22:48.527978+05	2	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
21	2021-12-30 15:22:48.536273+05	1	Ответ пользователя 7dbd356e-d307-42b1-9370-fbd01c52c85b на вопрос Когда был создан фреймворк Django ?	3		13	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	survey	question
10	survey	questiontype
11	survey	survey
12	survey	questionanswerchoice
13	survey	usersanswer
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-30 09:11:42.21392+05
2	auth	0001_initial	2021-12-30 09:11:43.333171+05
3	admin	0001_initial	2021-12-30 09:11:44.182835+05
4	admin	0002_logentry_remove_auto_add	2021-12-30 09:11:44.272943+05
5	admin	0003_logentry_add_action_flag_choices	2021-12-30 09:11:44.314305+05
6	contenttypes	0002_remove_content_type_name	2021-12-30 09:11:44.443916+05
7	auth	0002_alter_permission_name_max_length	2021-12-30 09:11:44.463182+05
8	auth	0003_alter_user_email_max_length	2021-12-30 09:11:44.485613+05
9	auth	0004_alter_user_username_opts	2021-12-30 09:11:44.508899+05
10	auth	0005_alter_user_last_login_null	2021-12-30 09:11:44.527903+05
11	auth	0006_require_contenttypes_0002	2021-12-30 09:11:44.540775+05
12	auth	0007_alter_validators_add_error_messages	2021-12-30 09:11:44.557261+05
13	auth	0008_alter_user_username_max_length	2021-12-30 09:11:44.615888+05
14	auth	0009_alter_user_last_name_max_length	2021-12-30 09:11:44.671527+05
15	auth	0010_alter_group_name_max_length	2021-12-30 09:11:44.734645+05
16	auth	0011_update_proxy_permissions	2021-12-30 09:11:44.750195+05
17	authtoken	0001_initial	2021-12-30 09:11:44.81618+05
18	authtoken	0002_auto_20160226_1747	2021-12-30 09:11:45.09246+05
19	authtoken	0003_tokenproxy	2021-12-30 09:11:45.110511+05
20	sessions	0001_initial	2021-12-30 09:11:45.166248+05
21	survey	0001_initial	2021-12-30 09:11:45.561808+05
22	survey	0002_auto_20211230_0825	2021-12-30 13:25:13.952278+05
23	survey	0003_auto_20211230_0853	2021-12-30 13:53:34.950231+05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
exg3dg0id50xy1lu4txgbtvbphlhnow6	ZDI0N2MzNWZkZGVkMjNhYTQ2ZjQzN2M4M2M0YmI0YzE0NDFkMDE3Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDdjOWQ2MWYxOGE5ZmQ1NjNjNDAyYzMzN2I5ZjA0YjM0NWRlZGY2IiwiVVNFUl9JRCI6IjdkYmQzNTZlLWQzMDctNDJiMS05MzcwLWZiZDAxYzUyYzg1YiJ9	2022-01-13 14:05:30.27241+05
\.


--
-- Data for Name: survey_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_question (id, question_text, question_type_id, survey_id) FROM stdin;
1	Когда был создан фреймворк Django ?	2	1
2	Тестовый вопрос с текстовым ответом	1	1
\.


--
-- Data for Name: survey_questionanswerchoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_questionanswerchoice (id, answer, question_id, is_correct_answer) FROM stdin;
1	2000	1	f
2	2003	1	f
3	2005	1	f
4	2009	1	f
\.


--
-- Data for Name: survey_questiontype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_questiontype (id, name) FROM stdin;
1	Ответ текстом
2	Ответ с выбором одного варианта
3	Ответ с выбором нескольких вариантов
\.


--
-- Data for Name: survey_survey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_survey (id, name, start_date, end_date, description) FROM stdin;
1	Тестовый опрос	2021-12-30	2022-01-20	Это тестовый вопрос для тестирования API.
2	Тестовый устаревший опрос	2021-12-15	2021-12-23	Тестовый устаревший вопрос для определения отображает ли его API.
\.


--
-- Data for Name: survey_usersanswer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_usersanswer (id, uuid, text_answer, question_id) FROM stdin;
7	7dbd356e-d307-42b1-9370-fbd01c52c85b		1
8	7dbd356e-d307-42b1-9370-fbd01c52c85b	Какой-то ответ	2
\.


--
-- Data for Name: survey_usersanswer_choice_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_usersanswer_choice_answers (id, usersanswer_id, questionanswerchoice_id) FROM stdin;
1	7	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 21, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: survey_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_question_id_seq', 2, true);


--
-- Name: survey_questionanswerchoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_questionanswerchoice_id_seq', 4, true);


--
-- Name: survey_questiontype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_questiontype_id_seq', 3, true);


--
-- Name: survey_survey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_survey_id_seq', 2, true);


--
-- Name: survey_usersanswer_choice_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_usersanswer_choice_answers_id_seq', 1, true);


--
-- Name: survey_usersanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_usersanswer_id_seq', 8, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: survey_question survey_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question
    ADD CONSTRAINT survey_question_pkey PRIMARY KEY (id);


--
-- Name: survey_questionanswerchoice survey_questionanswerchoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questionanswerchoice
    ADD CONSTRAINT survey_questionanswerchoice_pkey PRIMARY KEY (id);


--
-- Name: survey_questiontype survey_questiontype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questiontype
    ADD CONSTRAINT survey_questiontype_pkey PRIMARY KEY (id);


--
-- Name: survey_survey survey_survey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_survey
    ADD CONSTRAINT survey_survey_pkey PRIMARY KEY (id);


--
-- Name: survey_usersanswer_choice_answers survey_usersanswer_choic_usersanswer_id_questiona_4e5b3e1d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer_choice_answers
    ADD CONSTRAINT survey_usersanswer_choic_usersanswer_id_questiona_4e5b3e1d_uniq UNIQUE (usersanswer_id, questionanswerchoice_id);


--
-- Name: survey_usersanswer_choice_answers survey_usersanswer_choice_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer_choice_answers
    ADD CONSTRAINT survey_usersanswer_choice_answers_pkey PRIMARY KEY (id);


--
-- Name: survey_usersanswer survey_usersanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer
    ADD CONSTRAINT survey_usersanswer_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: survey_question_question_type_id_aa3f05b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_question_question_type_id_aa3f05b2 ON public.survey_question USING btree (question_type_id);


--
-- Name: survey_question_survey_id_aa755a68; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_question_survey_id_aa755a68 ON public.survey_question USING btree (survey_id);


--
-- Name: survey_questionanswerchoice_question_id_bd584699; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_questionanswerchoice_question_id_bd584699 ON public.survey_questionanswerchoice USING btree (question_id);


--
-- Name: survey_usersanswer_choice__questionanswerchoice_id_0722664c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_usersanswer_choice__questionanswerchoice_id_0722664c ON public.survey_usersanswer_choice_answers USING btree (questionanswerchoice_id);


--
-- Name: survey_usersanswer_choice_answers_usersanswer_id_1695cb82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_usersanswer_choice_answers_usersanswer_id_1695cb82 ON public.survey_usersanswer_choice_answers USING btree (usersanswer_id);


--
-- Name: survey_usersanswer_question_id_be8a67ea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX survey_usersanswer_question_id_be8a67ea ON public.survey_usersanswer USING btree (question_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_question survey_question_question_type_id_aa3f05b2_fk_survey_qu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question
    ADD CONSTRAINT survey_question_question_type_id_aa3f05b2_fk_survey_qu FOREIGN KEY (question_type_id) REFERENCES public.survey_questiontype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_question survey_question_survey_id_aa755a68_fk_survey_survey_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question
    ADD CONSTRAINT survey_question_survey_id_aa755a68_fk_survey_survey_id FOREIGN KEY (survey_id) REFERENCES public.survey_survey(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_questionanswerchoice survey_questionanswe_question_id_bd584699_fk_survey_qu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questionanswerchoice
    ADD CONSTRAINT survey_questionanswe_question_id_bd584699_fk_survey_qu FOREIGN KEY (question_id) REFERENCES public.survey_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_usersanswer_choice_answers survey_usersanswer_c_questionanswerchoice_0722664c_fk_survey_qu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer_choice_answers
    ADD CONSTRAINT survey_usersanswer_c_questionanswerchoice_0722664c_fk_survey_qu FOREIGN KEY (questionanswerchoice_id) REFERENCES public.survey_questionanswerchoice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_usersanswer_choice_answers survey_usersanswer_c_usersanswer_id_1695cb82_fk_survey_us; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer_choice_answers
    ADD CONSTRAINT survey_usersanswer_c_usersanswer_id_1695cb82_fk_survey_us FOREIGN KEY (usersanswer_id) REFERENCES public.survey_usersanswer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: survey_usersanswer survey_usersanswer_question_id_be8a67ea_fk_survey_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_usersanswer
    ADD CONSTRAINT survey_usersanswer_question_id_be8a67ea_fk_survey_question_id FOREIGN KEY (question_id) REFERENCES public.survey_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

