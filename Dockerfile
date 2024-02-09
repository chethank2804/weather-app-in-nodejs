FROM ubuntu

 WORKDIR /app
RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

COPY . . /app/


RUN npm install -g npm@latest



ENTRYPOINT [ "tail", "-f", "/dev/null" ]

#ENTRYPOINT [ "node", "app.js" ]
