--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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

DROP DATABASE "healthapp-backend";
--
-- Name: healthapp-backend; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "healthapp-backend" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


\connect -reuse-previous=on "dbname='healthapp-backend'"

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
-- Name: bp_entry; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bp_entry (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    diastolic integer NOT NULL,
    systolic integer NOT NULL,
    heartrate integer NOT NULL
);


--
-- Name: water_entry; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.water_entry (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    ml integer NOT NULL
);


--
-- Data for Name: bp_entry; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.bp_entry VALUES ('c411e051-025e-400d-85d2-e0aef5097430', '2021-06-23 02:20:07.866-06', '2021-06-23 02:20:07.866261-06', 87, 20, 27);
INSERT INTO public.bp_entry VALUES ('67a515ed-220e-41a3-b0df-0ad0938ca155', '2021-06-23 02:20:58.62-06', '2021-06-23 02:20:58.620646-06', 85, 10, 20);
INSERT INTO public.bp_entry VALUES ('d0e1b043-b028-4551-b756-90ee3d1fdbe4', '2021-06-23 02:21:01.41-06', '2021-06-23 02:21:01.410181-06', 65, 37, 11);
INSERT INTO public.bp_entry VALUES ('6c7bc5d7-3d6d-4f98-aaea-f3ca463c9b1c', '2021-06-29 02:12:09.823-06', '2021-06-29 02:12:09.824132-06', 68, 18, 58);
INSERT INTO public.bp_entry VALUES ('0bdc963e-5dba-47d4-a936-a4f37acc23dd', '2021-06-29 02:12:44.049-06', '2021-06-29 02:12:44.049631-06', 68, 56, 25);
INSERT INTO public.bp_entry VALUES ('ec37601d-4210-419a-946e-9ed02c28e1c7', '2021-06-29 02:14:03.964-06', '2021-06-29 02:14:03.964442-06', 82, 22, 13);
INSERT INTO public.bp_entry VALUES ('7923a730-a172-4a42-afee-260df949680d', '2021-06-29 02:15:53.18-06', '2021-06-29 02:15:53.180508-06', 73, 22, 75);
INSERT INTO public.bp_entry VALUES ('25f6fdc0-5726-43b4-adf7-5d9a6922f2a9', '2021-06-29 02:15:58.981-06', '2021-06-29 02:15:58.981974-06', 80, 47, 88);
INSERT INTO public.bp_entry VALUES ('6da91e57-fafb-4451-bbfd-ab8c13d9e1d9', '2021-06-29 02:19:37.28-06', '2021-06-29 02:19:37.281091-06', 81, 67, 45);
INSERT INTO public.bp_entry VALUES ('d59bf1d0-2888-493d-b37b-d2fcc1609989', '2021-06-29 02:19:47.248-06', '2021-06-29 02:19:47.248589-06', 62, 20, 54);
INSERT INTO public.bp_entry VALUES ('ec51e7a0-b87a-4b2d-9035-85565c8770d6', '2021-06-29 04:50:46.064-06', '2021-06-29 04:50:46.064738-06', 17, 80, 75);
INSERT INTO public.bp_entry VALUES ('00fba8ec-65aa-4d0a-8056-65b570aaa6f6', '2021-06-29 05:18:38.978-06', '2021-06-29 05:18:38.979113-06', 34, 43, 18);
INSERT INTO public.bp_entry VALUES ('022662a3-c5f8-48b8-9905-2a30dc9f959b', '2021-06-29 06:04:58.709-06', '2021-06-29 06:04:58.709635-06', 45, 22, 21);
INSERT INTO public.bp_entry VALUES ('e4f07928-d3a8-4e0d-a014-48bd208a585f', '2021-06-30 02:15:49.241-06', '2021-06-30 02:15:49.241899-06', 75, 38, 70);
INSERT INTO public.bp_entry VALUES ('f631aa56-a107-41d4-b613-360a466b7aec', '2021-06-30 02:15:52.665-06', '2021-06-30 02:15:52.665253-06', 47, 42, 71);
INSERT INTO public.bp_entry VALUES ('f32f7ef3-6f28-4bb8-90ed-ac5eaff1a9ad', '2021-06-30 02:19:29.349-06', '2021-06-30 02:19:29.349454-06', 30, 68, 68);
INSERT INTO public.bp_entry VALUES ('eb6b90a9-7f2a-419d-9fa5-cc26bdceca66', '2021-06-30 02:19:29.901-06', '2021-06-30 02:19:29.901449-06', 60, 80, 54);
INSERT INTO public.bp_entry VALUES ('2d2e2a68-755b-462e-aed0-7ac7d12752c2', '2021-06-30 02:19:30.418-06', '2021-06-30 02:19:30.418249-06', 48, 18, 38);
INSERT INTO public.bp_entry VALUES ('2f1686bc-07f4-4dea-9605-1df9c34b346f', '2021-06-30 02:23:26.601-06', '2021-06-30 02:23:26.601859-06', 31, 27, 84);
INSERT INTO public.bp_entry VALUES ('7bd686d9-f6b8-4836-8511-59edc64ab4a0', '2021-06-30 02:23:27.152-06', '2021-06-30 02:23:27.153128-06', 18, 87, 38);
INSERT INTO public.bp_entry VALUES ('c3d93a56-3665-4add-8a07-7f96cdf8e776', '2021-06-30 02:23:27.596-06', '2021-06-30 02:23:27.596971-06', 40, 75, 33);


--
-- Data for Name: water_entry; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.water_entry VALUES ('4a5b4ec4-b48e-430e-9302-52a8afb9d128', '2021-06-23 02:21:11.771-06', '2021-06-23 02:21:11.771444-06', 862);
INSERT INTO public.water_entry VALUES ('c334a7d4-b812-44c1-b8d2-20da8c65e49e', '2021-06-23 02:21:12.675-06', '2021-06-23 02:21:12.675615-06', 601);
INSERT INTO public.water_entry VALUES ('1185ab0a-9d58-41ed-b780-9bafc6e11be6', '2021-06-23 02:21:14.705-06', '2021-06-23 02:21:14.705274-06', 517);
INSERT INTO public.water_entry VALUES ('d370e0d4-00d6-49df-a4f2-01b971aaf7a0', '2021-06-29 02:16:02.449-06', '2021-06-29 02:16:02.449213-06', 881);
INSERT INTO public.water_entry VALUES ('87c5a127-6bf0-42cb-8c83-e67443da3793', '2021-06-29 02:16:07.33-06', '2021-06-29 02:16:07.330751-06', 718);
INSERT INTO public.water_entry VALUES ('2e8b6880-cb8e-4186-bcd0-1eee951b5b26', '2021-06-29 02:16:08.12-06', '2021-06-29 02:16:08.120247-06', 350);
INSERT INTO public.water_entry VALUES ('23e5214f-21d7-46a9-8fd9-d68e5fb15ed3', '2021-06-29 02:16:47.886-06', '2021-06-29 02:16:47.886516-06', 301);
INSERT INTO public.water_entry VALUES ('a5591500-04cf-4db2-9cbf-3569fabc78b8', '2021-06-29 02:19:33.552-06', '2021-06-29 02:19:33.552922-06', 638);
INSERT INTO public.water_entry VALUES ('6a3f8dac-a373-41c4-81a9-2a06034aa674', '2021-06-29 02:19:35.37-06', '2021-06-29 02:19:35.370776-06', 253);
INSERT INTO public.water_entry VALUES ('661bf744-c8d9-4ccd-a646-3723f0df5515', '2021-06-29 05:17:51.809-06', '2021-06-29 05:17:51.809774-06', 320);
INSERT INTO public.water_entry VALUES ('629bd2c5-583a-402b-9349-8a0de8aff5b6', '2021-06-29 06:04:56.065-06', '2021-06-29 06:04:56.065257-06', 875);
INSERT INTO public.water_entry VALUES ('c41c1bf7-5740-4448-986c-e2c6b6c8771c', '2021-06-30 02:15:55.891-06', '2021-06-30 02:15:55.891542-06', 232);
INSERT INTO public.water_entry VALUES ('202231bc-5774-4bea-ad09-0c4eab004a4f', '2021-06-30 02:15:56.434-06', '2021-06-30 02:15:56.434682-06', 235);
INSERT INTO public.water_entry VALUES ('489c6ae6-b425-46f2-9973-6c2ca97190c5', '2021-06-30 02:15:57.205-06', '2021-06-30 02:15:57.205547-06', 751);
INSERT INTO public.water_entry VALUES ('e8fa0d2e-be8a-4f56-ac08-7f945417545f', '2021-06-30 02:19:33.016-06', '2021-06-30 02:19:33.016537-06', 734);
INSERT INTO public.water_entry VALUES ('cf4b781d-4795-46c8-96f0-a576f01860fd', '2021-06-30 02:19:33.714-06', '2021-06-30 02:19:33.714406-06', 865);
INSERT INTO public.water_entry VALUES ('2bfbaf6f-04ff-42c1-bfaa-891c5d44f25e', '2021-06-30 02:19:34.323-06', '2021-06-30 02:19:34.324029-06', 750);
INSERT INTO public.water_entry VALUES ('c60f17c1-54c0-4905-a178-b3b734db8321', '2021-06-30 02:23:29.68-06', '2021-06-30 02:23:29.680141-06', 657);
INSERT INTO public.water_entry VALUES ('f75b75c2-b20e-4acf-b3f4-fb0c496619d3', '2021-06-30 02:23:30.129-06', '2021-06-30 02:23:30.129851-06', 312);
INSERT INTO public.water_entry VALUES ('d084d3b1-a719-4355-b177-94278f24ec47', '2021-06-30 02:23:30.555-06', '2021-06-30 02:23:30.555225-06', 355);


--
-- Name: bp_entry bp_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bp_entry
    ADD CONSTRAINT bp_entry_pkey PRIMARY KEY (id);


--
-- Name: water_entry water_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.water_entry
    ADD CONSTRAINT water_entry_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

