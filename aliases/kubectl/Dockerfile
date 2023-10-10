FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install -y curl wget && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    cd tmp && wget --no-check-certificate --content-disposition https://github.com/ahmetb/kubectx/releases/download/v0.9.4/kubectx_v0.9.4_linux_x86_64.tar.gz && \
    wget --no-check-certificate --content-disposition https://github.com/ahmetb/kubectx/releases/download/v0.9.4/kubens_v0.9.4_linux_x86_64.tar.gz && \
    tar -xzvf /tmp/kubens_v0.9.4_linux_x86_64.tar.gz && \
    tar -xzvf /tmp/kubectx_v0.9.4_linux_x86_64.tar.gz && \
    mv /tmp/kubectx /usr/local/bin/ && \
    mv /tmp/kubens /usr/local/bin/ && \
    rm /tmp/kubens_v0.9.4_linux_x86_64.tar.gz && \
    rm /tmp/kubectx_v0.9.4_linux_x86_64.tar.gz

RUN echo "#!/bin/bash" >> /usr/local/bin/docker-entrypoint.sh && \
echo "exec \"\$@\"" >> /usr/local/bin/docker-entrypoint.sh && \
chmod u+x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]    
