# pull official base image
FROM python:3.11.4-slim-buster
RUN apt-get update && apt-get install -y netcat
# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependency
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt


COPY ./entrypoint.sh .
RUN chmod +x /usr/src/app/entrypoint.sh
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
# CMD ["./entrypoint.sh"]
# VOLUME /usr/src/app

# copy project
COPY . .

