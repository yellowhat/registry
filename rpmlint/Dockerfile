FROM registry.fedoraproject.org/fedora-minimal:42

RUN microdnf install -y --setopt=install_weak_deps=0 \
        rpmlint \
 && microdnf clean all
