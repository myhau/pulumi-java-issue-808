FROM ubuntu

RUN apt -y update && apt -y install git vim wget jq && wget https://go.dev/dl/go1.19.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz


ENV PATH=$PATH:/usr/local/go/bin
RUN echo "export PATH=/usr/local/go/bin:${PATH}" >> /root/.bashrc

