FROM	openjdk:1

WORKDIR	/app

COPY	helloworld.java /app

CMD	["java","helloworld.java"]
