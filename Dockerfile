FROM centos:latest
RUN yum install -y epel-release && yum install -y ansible
RUN yum -y install openssh-server openssh-clients
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
RUN sshpass -p cueryuc1!cueryuc1! scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  ~/.ssh/id_rsa.pub boaz@40.76.26.31:/home/boaz/.ssh/authorized_keys
CMD ["/bin/bash"]
