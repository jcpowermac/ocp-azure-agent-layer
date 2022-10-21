FROM quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:3795642c0bc82fd42fe5a4086634b22487394ddf95e0103372423be199bb60f4

COPY ./repos/* /etc/yum.repos.d/
RUN rm /etc/rhsm-host

RUN rpm-ostree install WALinuxAgent && \
    rpm-ostree cleanup -m && \
    ostree container commit
