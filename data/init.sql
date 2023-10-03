CREATE DATABASE sample_db;
CREATE TABLE sample_db.sample_table (
  id int NOT NULL,
  name varchar(10) NOT NULL
);

INSERT INTO
  sample_db.sample_table
VALUES
  (1, 'Tom'),
  (2, 'Jerry');