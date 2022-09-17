# pull official base image
FROM python:3.10.7-slim-buster

# set working directory
# may need to run mkdir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# set environment variables
# prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# prevent python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# add and install requirements
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# add app
COPY . .

# run server
CMD python manage.py run -h 0.0.0.0