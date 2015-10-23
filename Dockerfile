FROM centos:6

RUN yum -y install epel-release >/dev/null 2>&1
RUN yum clean all
RUN yum -y install git nodejs npm >/dev/null 2>&1
RUN npm install -g grunt-cli >/dev/null 2>&1

RUN useradd -m -s /bin/bash lambda
RUN mkdir -p /hello-world-lambda
COPY . /hello-world-lambda
RUN chown -R lambda:lambda /hello-world-lambda

VOLUME /hello-world-lambda

USER lambda