FROM registry.ci.openshift.org/rhcos-devel/rhel-coreos:latest

COPY ./repos/* /etc/yum.repos.d/
RUN rm /etc/rhsm-host

RUN rpm-ostree install WALinuxAgent
