CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE favorites (
  username VARCHAR
    REFERENCES users ON DELETE CASCADE,
  country_code VARCHAR(3),
  PRIMARY KEY (username, country_code)
);