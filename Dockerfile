FROM debian:latest
WORKDIR /app
CMD ["bash", "start.sh"]
EXPOSE 8565 8766

COPY . /app
RUN ./install.sh
