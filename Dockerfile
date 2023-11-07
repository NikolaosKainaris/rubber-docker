FROM ubuntu:22.04
RUN apt update && apt install -y python2 build-essential libssl-dev libffi-dev python2-dev wget
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && python2 get-pip.py
ADD . /rubber-docker
RUN pip install .
 
