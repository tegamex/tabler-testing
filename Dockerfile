FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt -y install git npm ruby ruby-dev zlib1g zlib1g-dev

WORKDIR /opt

RUN git clone https://github.com/tabler/tabler.git

WORKDIR /opt/tabler

RUN npm install && gem install bundler && bundle install

EXPOSE 3000

CMD [ "npm" , "start" ]
