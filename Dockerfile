FROM centos

RUN yum -y update
RUN yum install -y nano vim net-tools httpd

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh
