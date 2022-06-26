create table users (
  id serial NOT NULL,
  email         varchar(60) not null,
  password      varchar(100) not null,
  role          varchar(20) default 'ROLE_USER' not null,
  constraint users_pk primary key(id)
);

create  unique index users_u1 on users(email);

