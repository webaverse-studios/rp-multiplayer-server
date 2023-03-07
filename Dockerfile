FROM ubuntu:18.04
RUN apt update
RUN apt install -y ca-certificates 
WORKDIR /src
ADD . .
EXPOSE 80
RUN chmod +x /src/server.x86_64
CMD ["/src/server.x86_64", "-nographics", "-batchmode", "--port", "80"]