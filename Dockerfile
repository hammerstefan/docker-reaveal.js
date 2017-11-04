FROM ubuntu:16.04

RUN apt update
RUN apt install -y \
	git \
	curl \
	build-essential
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt install -y nodejs
RUN git clone https://github.com/hakimel/reveal.js.git /usr/share/reveal.js
WORKDIR /usr/share/reveal.js
RUN npm install

