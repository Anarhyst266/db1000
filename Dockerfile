FROM dperson/torproxy
RUN mkdir /app && wget -O /app/db1000.tar.gz https://github.com/Arriven/db1000n/releases/download/v0.8.3/db1000n-v0.8.3-linux-amd64.tar.gz && tar zxvf /app/db1000.tar.gz -C /app
WORKDIR /app
ENV EXITNODE="RU"
ENTRYPOINT []
COPY run.sh ./
CMD ["./run.sh"]
