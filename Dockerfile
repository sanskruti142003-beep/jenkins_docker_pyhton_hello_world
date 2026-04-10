FROM	openjdk:11-slim

WORKDIR	/app

COPY	helloworld.java /app

CMD	["java", "helloworld.java"]
