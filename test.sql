CREATE ROLE readonly;
GRANT CONNECT ON DATABASE database-1 TO readonly;
GRANT USAGE ON SCHEMA myschema TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA myschema TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA myschema GRANT SELECT ON TABLES TO readonly;

-- Users creation

CREATE USER $user WITH PASSWORD $password;


-- Grant privileges to users

GRANT readonly TO $user;
