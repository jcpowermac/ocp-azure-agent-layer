FROM registry.ci.openshift.org/ocp/4.12:artifacts as artifacts
FROM registry.ci.openshift.org/rhcos-devel/rhel-coreos:latest
COPY --from=artifacts /srv/repo/*.rpm /etc/yum.repos.d/
RUN rpm-ostree install WALinuxAgent
