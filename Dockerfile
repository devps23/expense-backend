FROM centos
RUN dnf install mysql git -y
COPY run.sh /
ENTRYPOINT ["bash","/run.sh"]

