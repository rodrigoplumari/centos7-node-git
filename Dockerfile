#Image built for Marketplace

FROM centos:7

RUN yum update -y && yum install -y -q curl python build-essential git ca-certificates

RUN yum -y groupinstall "Development tools"

RUN yum install make

RUN mkdir /nodejs && curl http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

WORKDIR /opt/Marketplace

CMD ["node /opt/Marketplace/app.js"]