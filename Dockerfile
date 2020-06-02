FROM centos
RUN yum install openssh.x86_64 curl wget sudo -y
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s \  https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN sudo mv ./kubectl /usr/local/bin/kubectl
RUN kubectl version --client
RUN echo 'root:root' | chpasswd


