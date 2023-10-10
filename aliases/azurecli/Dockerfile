FROM mcr.microsoft.com/azure-cli:2.46.0

RUN echo "#!/bin/bash" >> /usr/local/bin/docker-entrypoint.sh && \
echo "exec \"\$@\"" >> /usr/local/bin/docker-entrypoint.sh && \
chmod u+x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
