FROM registry.access.redhat.com/ubi9/ubi:latest
COPY run.sh /
ENTRYPOINT ["bash", "/run.sh"]
