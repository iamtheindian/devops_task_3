FROM centos
RUN yum install curl wget sudo -y
RUN yum –y install openssh-server openssh-clients
RUN systemctl start sshd && systemctl enable sshd  && systemctl status ssh
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s \  https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN sudo mv ./kubectl /usr/local/bin/kubectl
RUN kubectl version --client
RUN echo 'root:root' | chpasswd


