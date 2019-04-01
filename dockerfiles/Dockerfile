FROM python:3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install vim && apt-get -y install jq
RUN echo "color delek" >> ~/.vimrc
RUN alias vi=vim
RUN pip3 install pipenv
WORKDIR /workdir
ENV WORKON_HOME=/workdir/.venvs
RUN pipenv --python 3
#RUN echo "machine jiramstdev\nlogin mppm-service\npassword jirabot" > /root/.netrc
ENV PIPENV_SHELL=bash
CMD pipenv install && pipenv shell

