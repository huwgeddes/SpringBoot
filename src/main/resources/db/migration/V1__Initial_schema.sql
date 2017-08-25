create table bootdb.role(
	role_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	role VARCHAR(255) NOT NULL
);

insert into bootdb.role(role) values ('ADMIN');

create table bootdb.user(
	user_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	active bit(1) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL
);

create table bootdb.user_role(
	user_id BIGINT,
	role_id BIGINT,
	PRIMARY KEY (user_id, role_id),
	FOREIGN KEY (user_id) REFERENCES bootdb.user (user_id),
	FOREIGN KEY (role_id) REFERENCES bootdb.role (role_id)
);