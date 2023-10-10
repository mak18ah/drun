FROM ubuntu:latest

COPY certs/* /usr/share/ca-certificates/extra/ 

RUN apt-get -y update && \
apt-get install -y wget unzip git curl && \
cd /tmp && \
wget --no-check-certificate https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_linux_amd64.zip && \
unzip terraform_1.3.1_linux_amd64.zip && \
mv terraform /usr/bin/ && \
echo "extra/Zscaler_Intermediate_Root_CA_zscalerthree.net.crt" >> /etc/ca-certificates.conf && \
echo "extra/Zscaler_Root_CA.crt" >> /etc/ca-certificates.conf && \
update-ca-certificates && \
git config --global --add safe.directory "*" && \
curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \ 
echo "#!/bin/bash" >> /usr/local/bin/docker-entrypoint.sh && \
echo "exec \"\$@\"" >> /usr/local/bin/docker-entrypoint.sh && \
chmod u+x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
