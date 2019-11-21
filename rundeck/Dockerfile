FROM rundeck/rundeck:SNAPSHOT

RUN mkdir data
COPY --chown=rundeck:root ./data ./data
COPY --chown=rundeck:root lib docker-lib
RUN chmod +x docker-lib/generate-ssl.sh
RUN ./docker-lib/generate-ssl.sh

EXPOSE 4443 4440
