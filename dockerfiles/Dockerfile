FROM python:3-slim
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install vim && apt-get -y install jq && apt-get -y install build-essential libssl-dev libffi-dev python3-dev && rm -rf /var/lib/apt/lists/*
RUN echo "color delek" >> ~/.vimrc
RUN alias vi=vim
RUN pip3 install pipenv  
WORKDIR /workdir
ENV WORKON_HOME=/workdir/.venvs
RUN pipenv --python 3
ENV PIPENV_SHELL=bash
CMD pipenv install && pipenv shell

