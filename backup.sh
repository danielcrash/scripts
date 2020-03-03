#!/bin/bash

#. script/variable.sh
echo Fazendo dump ...

PGPASSWORD=[PASSWORD] pg_dump -h [HOST] -p [PORT] -U [USER] -d [DATABASE] > DUMPNAME.dump -v

echo criando banco ...

PGPASSWORD=[PASSWORD] psql --command="select pg_terminate_backend(PID) from pg_stat_activity where datname = 'dms_prod'" --host=[HOST] --port=[PORT] --username=[USERNAME] --dbname=

PGPASSWORD=[PASSWORD] dropdb -U [USER] -h [HOST] [DATABASE] -e
PGPASSWORD=[PASSWORD] createdb -U [USER] -h [HOST] [DATABASE]

echo restaurando banco ...

PGPASSWORD=[PASSWORD] psql -a -U [USER] -h [HOST] -d [DATABASE] < DUMPNAME.dump