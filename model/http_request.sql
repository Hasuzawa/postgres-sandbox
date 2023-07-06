create type http_method as enum (
	'GET',
	'HEAD',
	'POST',
	'PUT',
	'DELETE',
	'CONNECT',
	'OPTIONS',
	'TRACE',
	'PATCH'
);


create table http_request (
	id bigint generated always as identity,
	http_method http_method not null default 'GET',
	path varchar(128) not null,
	status_code int not null,

	primary key(id),
	constraint check_status_code check (status_code >= 0 and status_code < 600)
);


insert into http_request
values (default, default, '/', 200),
(default, 'GET', '/orders', 200),
(default, 'POST', '/reservation', 400),
(default, 'PUT', '/postpone', 500),
(default, 'DELETE', '/cancel', 404);
