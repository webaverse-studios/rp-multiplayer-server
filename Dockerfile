FROM ubuntu:18.04
WORKDIR /src
ADD . .
EXPOSE 80
RUN chmod +x /src/server.x86_64
CMD ["/src/server.x86_64", "-nographics", "-batchmode", "--port", "80"]