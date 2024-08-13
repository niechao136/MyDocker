DROP DATABASE IF EXISTS my_zhi_hu;
CREATE DATABASE my_zhi_hu;
CREATE SEQUENCE "public"."user_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 999999999 START 1 CACHE 1;
CREATE SEQUENCE "public"."question_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 999999999 START 1 CACHE 1;
CREATE SEQUENCE "public"."answer_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 999999999 START 1 CACHE 1;
CREATE SEQUENCE "public"."commit_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 999999999 START 1 CACHE 1;
create table users
(
    id                integer   default nextval('user_id_seq'::regclass) not null
        constraint users_pri
            primary key,
    username          varchar(50)                                         not null,
    password          varchar(50)                                         not null,
    nickname          varchar(50)                                         not null,
    email             varchar(50),
    phone             varchar(50),
    questions         integer[],
    answers           integer[],
    commits           integer[],
    remarks           integer[],
    watching_people   integer[],
    watching_question integer[],
    create_at         timestamp default now(),
    update_at         timestamp default now(),
    is_delete         boolean   default false
);
create table questions
(
    id        integer   default nextval('question_id_seq'::regclass) not null
        constraint questions_pri
            primary key,
    owner_id  integer                                                not null,
    title     varchar(100)                                           not null,
    content   varchar(1000)                                          not null,
    answers   integer[],
    watching  integer[],
    create_at timestamp default now(),
    update_at timestamp default now(),
    is_delete boolean   default false
);
create table answers
(
    id          integer   default nextval('answer_id_seq'::regclass) not null
        constraint answers_pri
            primary key,
    owner_id    integer                                              not null,
    question_id integer                                              not null,
    content     varchar(1000)                                        not null,
    commits     integer[],
    agree       integer[],
    remark      integer[],
    create_at   timestamp default now(),
    update_at   timestamp default now(),
    is_delete   boolean   default false
);
create table commits
(
    id        integer   default nextval('commit_id_seq'::regclass) not null
        constraint commits_pri
            primary key,
    owner_id  integer                                              not null,
    answer_id integer                                              not null,
    parent_id integer                                              not null,
    content   varchar(1000)                                        not null,
    children  integer[],
    agree     integer[],
    create_at timestamp default now(),
    update_at timestamp default now(),
    is_delete boolean   default false,
    root_id   integer                                              not null
);
