-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'bug_wars';

DROP DATABASE bug_wars;

DROP USER bug_wars_owner;
DROP USER bug_wars_appuser;
