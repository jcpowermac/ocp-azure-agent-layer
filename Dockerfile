FROM quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:032182615549113df0347f624ee1f4964772c454e5696b7563f26f4920a1679d

COPY ./repos/* /etc/yum.repos.d/
RUN rm /etc/rhsm-host

RUN rpm-ostree install WALinuxAgent && \
    rpm-ostree cleanup -m && \
    ostree container commit
