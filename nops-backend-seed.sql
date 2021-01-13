-- both test users have the password "password"

INSERT INTO users (username, password, first_name, last_name, email, is_admin)
VALUES ('testuser',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'User',
        'rain@email.com',
        FALSE),
       ('testadmin',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'Admin',
        'rain@email.com',
        TRUE);

INSERT INTO favorites (username, country_code)
VALUES (testuser, AUS),
       (testuser, EGY),
       (testuser, JPN),
       (testuser, GUM),
       (testadmin, JAM),
       (testadmin, MLT),
       (testadmin, ZAF),
       (testadmin, SLB),
       (testadmin, VUT);