FROM docker.io/tensorchord/pgvecto-rs-binary:pg16-v0.3.0-${TARGETARCH} as binary

FROM docker.io/bitnami/postgresql:16.4.0-debian-12-r15

USER root

COPY --from=binary /pgvecto-rs-binary-release.deb /tmp/vectors.deb

RUN apt-get install -y /tmp/vectors.deb \
 && rm -f /tmp/vectors.deb \
 && mv /usr/lib/postgresql/*/lib/vectors.so /opt/bitnami/postgresql/lib/ \
 && mv usr/share/postgresql/*/extension/vectors* opt/bitnami/postgresql/share/extension/

USER 1001

ENV POSTGRESQL_EXTRA_FLAGS="-c shared_preload_libraries=vectors.so"
