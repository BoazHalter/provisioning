FROM centos:latest
RUN yum install -y epel-release && yum install -y ansible
RUN yum -y install openssh-server openssh-clients
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
ARG azure_ip
ENV azure_ip ${env.AZURE_IP}
RUN printenv
RUN sshpass -p cueryuc1!cueryuc1! scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  ~/.ssh/id_rsa.pub boaz@$azure_ip:/home/boaz/.ssh/authorized_keys
RUN ssh -o "StrictHostKeyChecking no" boaz@$azure_ip hostname
COPY ansible.cfg /etc/ansible/ansible.cfg
CMD ["/bin/bash"]
