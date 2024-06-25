#!/bin/sh

if [ "$DATABASE" = "postgres"]
then
    echo "Postgres is Waiting"

    while ! nc -z $SQL_HOST $SQL_PORT;do
        sleep 0.1
    done

    echo "Postgres is started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"
