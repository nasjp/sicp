FROM ubuntu:latest

RUN apt-get update && apt-get install -y make guile-3.0 

WORKDIR /app

COPY . .
