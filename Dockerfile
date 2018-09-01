FROM centos:latest
RUN yum install -y epel-release && yum install -y ansible
RUN yum -y install openssh-server openssh-clients
COPY ansible.cfg /etc/ansible/ansible.cfg
CMD ["/bin/bash"]
