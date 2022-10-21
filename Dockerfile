FROM registry.ci.openshift.org/ocp/4.12:base as base
FROM registry.ci.openshift.org/rhcos-devel/rhel-coreos:latest
COPY --from=base /etc/yum.repos.d/*.repo /etc/yum.repos.d/
RUN rpm-ostree install WALinuxAgent
