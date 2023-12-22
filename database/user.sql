-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER bug_wars_owner
WITH PASSWORD 'bugwars';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO bug_wars_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO bug_wars_owner;

CREATE USER bug_wars_appuser
WITH PASSWORD 'bugwars';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO bug_wars_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO bug_wars_appuser;
