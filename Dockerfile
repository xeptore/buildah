FROM fedora:32

RUN echo "fastestmirror=true" >> /etc/dnf/dnf.conf

RUN echo "install_weak_deps=false" >> /etc/dnf/dnf.conf

RUN dnf -y upgrade && dnf -y install buildah podman runc && dnf clean all