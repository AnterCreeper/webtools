FROM debian:latest
WORKDIR /app
CMD ["bash", "start.sh"]
EXPOSE 8765 8766

COPY . /app
RUN ./install.sh
