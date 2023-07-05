-- 3-char code follows ISO 3166
create table country (
	code char(3) primary key,
	name varchar not null
);
