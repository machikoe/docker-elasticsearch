FROM elasticsearch:5

COPY elasticsearch.yml /usr/share/elasticsearch/config/
COPY log4j2.properties /usr/share/elasticsearch/config/

RUN elasticsearch-plugin  install --batch x-pack

RUN elasticsearch-plugin  install analysis-kuromoji

RUN elasticsearch-plugin install analysis-icu

EXPOSE 9200 9300
