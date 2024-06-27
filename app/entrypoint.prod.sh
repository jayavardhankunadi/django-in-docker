#!/bin/sh

if [ "$DATABASE" = "postgres"] then

    while ! nc -z $SQL_HOST $SQL_PORT;do
        sleep .1
    done 

fi

