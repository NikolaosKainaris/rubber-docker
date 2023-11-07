# Create working environment for this workshop 
# Built as `docker build -t rubber-docker-env .`
# Run via `docker run -it rubber-docker-env:latest -v .:/rubber-docker-dev`
FROM ubuntu:22.04
RUN apt update && apt install -y python2 build-essential libssl-dev libffi-dev python2-dev wget vim
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && python2 get-pip.py
ADD . /workshop/rubber-docker
WORKDIR /rubber-docker
RUN pip install . && pip install -r requirements.txt 
 
