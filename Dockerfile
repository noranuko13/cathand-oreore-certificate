FROM centos:8

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
RUN yum update -y
RUN yum install -y openssl

RUN mkdir /keys
RUN mkdir /scripts

ENTRYPOINT ["/bin/bash", "-c"]
