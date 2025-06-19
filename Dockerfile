FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y wget gnupg2 curl software-properties-common python3 && \
    wget https://mega.nz/linux/repo/Debian_11/amd64/megacmd-Debian_11_amd64.deb && \
    apt install -y ./megacmd-Debian_11_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY mega_loop.sh /app/mega_loop.sh
COPY web.py /app/web.py

RUN chmod +x /app/mega_loop.sh

CMD ["/app/mega_loop.sh"]
