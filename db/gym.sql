DROP TABLE attendences;
DROP TABLE members;
DROP TABLE gymclasses;

CREATE TABLE members (
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  post_code VARCHAR(255),
  date_of_birth VARCHAR(255),
  email VARCHAR(255),
  mobile_number VARCHAR(255)
);

CREATE TABLE gymclasses (
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  duration VARCHAR(255),
  calories VARCHAR(255),
  instructor VARCHAR(255)
);

CREATE TABLE attendences (
  id SERIAL8 primary key,
  member_id INT8 REFERENCES members(id),
  gymclass_id INT8 REFERENCES gymclasses(id)
);
