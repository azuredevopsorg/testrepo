CREATE ROLE readonly;
GRANT CONNECT ON DATABASE $database TO readonly;
GRANT USAGE ON SCHEMA $schema TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA $schema TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA $schema GRANT SELECT ON TABLES TO readonly;

-- Users creation

CREATE USER $user WITH PASSWORD $password;


-- Grant privileges to users

GRANT readonly TO $user;
