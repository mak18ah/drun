FROM amazon/aws-cli:latest

RUN echo "#!/bin/bash" >> /usr/local/bin/docker-entrypoint.sh && \
echo "exec \"\$@\"" >> /usr/local/bin/docker-entrypoint.sh && \
chmod u+x /usr/local/bin/docker-entrypoint.sh


ENTRYPOINT [ "docker-entrypoint.sh" ]
