FROM amazonlinux

RUN yum update -y 
RUN yum install -y mc tar gzip sudo zip unzip less

# Tutorial: Setting Up Node.js on an Amazon EC2 Instance
# https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html

COPY install-aws-cli.sh install-aws-cli.sh 
COPY install-node.sh install-node.sh 

RUN chmod 755 install-*.sh
RUN ./install-aws-cli.sh
RUN ./install-node.sh

WORKDIR /mnt/app