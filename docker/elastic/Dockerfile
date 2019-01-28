FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

COPY ["./readonlyrest/readonlyrest-1.16.33_es6.5.4.zip","/tmp/"]
COPY ["./readonlyrest/config/readonlyrest.yml","/usr/share/elasticsearch/config/"]
COPY ["./readonlyrest/config/keystore.jks","/usr/share/elasticsearch/config/"]

RUN bin/elasticsearch-plugin install --batch file:///tmp/readonlyrest-1.16.33_es6.5.4.zip
