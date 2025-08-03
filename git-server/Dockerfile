FROM docker.io/alpine:3.22.1

# renovate: datasource=repology depName=alpine_3_22/git-daemon versioning=loose
ARG GIT_VER=2.49.1-r0
RUN apk add --no-cache \
        "git-daemon=$GIT_VER"

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "ash", "/entrypoint.sh" ]
