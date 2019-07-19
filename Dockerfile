FROM alpine:3.7

RUN apk add docker git curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN curl -LO https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_linux_amd64.zip
RUN unzip terraform_0.12.3_linux_amd64.zip
RUN mv ./terraform /usr/local/bin/terraform
