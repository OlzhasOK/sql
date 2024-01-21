CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(255)
);

ALTER TABLE users
ADD CONSTRAINT chk_age CHECK (age BETWEEN 18 AND 99);

ALTER TABLE users
ADD CONSTRAINT chk_email CHECK (email ~* '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

INSERT INTO users (name, age, email)
VALUES
  ('Alice Johnson', 28, 'alice.johnson@example.com'),
  ('Bob Smith', 35, 'bob.smith@example.com'),
  ('Charlie Brown', 22, 'charlie.brown@example.com'),
  ('David White', 30, 'david.white@example.com'),
  ('Eva Williams', 26, 'eva.williams@example.com'),
  ('Frank Davis', 32, 'frank.davis@example.com'),
  ('Grace Taylor', 29, 'grace.taylor@example.com'),
  ('Henry Miller', 31, 'henry.miller@example.com'),
  ('Ivy Robinson', 27, 'ivy.robinson@example.com'),
  ('Jack Harris', 33, 'jack.harris@example.com');
