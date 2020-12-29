\echo 'Delete and recreate nops_task db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE nops_task;
CREATE DATABASE nops_task;
\connect nops_task

\i nops-backend-schema.sql
\i nops-backend-seed.sql

\echo 'Delete and recreate nops_task_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE nops_task_test;
CREATE DATABASE nops_task_test;
\connect nops_task_test

\i nops-backend-schema.sql
