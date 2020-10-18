

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('2cf9adb8-7f16-4d3e-9012-05775a6f0c24', 'title', 'this is a psot', '2020-10-18 13:39:15.819744+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('e79e9505-0abb-4c8c-9a5d-8aec1b70c96b', 'post two', 'this is the body of that post!', '2020-10-18 13:39:15.822615+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('48356abe-22a0-4b90-b0cd-4f28fb5f7962', 'Hello World!', '', '2020-10-18 13:39:15.825202+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('fcf87450-72fa-4d0d-b690-33bcf1e20e3d', 'Hello World!', 'Lorem Ipsum dolor sit amet, something something sample text, i guess i dont understand', '2020-10-18 13:39:15.827804+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('7aae812e-dfb6-4aa5-a6b9-a0989ed5162e', 'htis post was created', '# title of the post
## subtitle
before the others,;;;;;; i suppose', '2020-10-18 13:40:25.146588+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('f0580712-5fea-4cf7-859a-7cafee9156ff', 'asdf', 'body', '2020-10-18 13:49:32.164245+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('788b4549-59a4-4b3c-8e8e-5442948e876f', 'the elequence of', '# ben
### shapiro
- consider
```some code```', '2020-10-18 13:49:55.929276+02');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('23037b93-9e1d-48fe-bc7e-a92fe8a378b0', '788b4549-59a4-4b3c-8e8e-5442948e876f', 'jake', 'finally this is linked to the proper user');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('4d8b77da-8883-4198-ba4a-ce86d884896a', '788b4549-59a4-4b3c-8e8e-5442948e876f', 'yo', 'check');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


