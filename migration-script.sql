CREATE TABLE IF NOT EXISTS task_table
(
    task_id integer NOT NULL,
    title character varying(250) COLLATE pg_catalog."default",
    description character varying(250) COLLATE pg_catalog."default",
    completed character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT tasktable_pkey PRIMARY KEY (task_id)
);


CREATE SEQUENCE IF NOT EXISTS task_table_seq
    INCREMENT 50
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE task_table_seq
    OWNER TO postgres;
