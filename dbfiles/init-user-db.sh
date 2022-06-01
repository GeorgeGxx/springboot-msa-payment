#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER postgres WITH PASSWORD 'root';
    CREATE DATABASE springboot;
    GRANT ALL PRIVILEGES ON DATABASE springboot TO postgres;
EOSQL