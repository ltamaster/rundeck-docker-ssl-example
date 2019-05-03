FROM rundeck/rundeck:SNAPSHOT

RUN mkdir data
COPY --chown=rundeck:rundeck ./data ./data
COPY --chown=rundeck:rundeck lib/generate-ssl.sh docker-lib
RUN chmod +x docker-lib/generate-ssl.sh
RUN ./docker-lib/generate-ssl.sh

VOLUME ["/home/rundeck/server/data"]

EXPOSE 4440
ENTRYPOINT [ "docker-lib/entry.sh" ]