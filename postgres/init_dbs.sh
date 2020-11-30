#!/bin/bash
set -e

psql -v ON_ERROR_STOP=0 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE $OFBIZ_DB;
    CREATE DATABASE $OFBIZ_OLAP_DB;
    CREATE DATABASE $OFBIZ_TENANT_DB;
EOSQL