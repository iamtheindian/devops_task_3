FROM centos
RUN yum install openssh.x86_64 curl wget -y
RUN echo "\n \
[kubernetes] \n \
name=Kubernetes \n \
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64 \n \
enabled=1 \n \
gpgcheck=1 \n \
repo_gpgcheck=1 \n \
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg \n  \
"  >>/etc/yum.repos.d/kubernetes.repo
RUN yum install -y kubectl

