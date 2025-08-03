FROM docker.io/alpine:3.22.1

# renovate: datasource=repology depName=alpine_3_22/bash versioning=loose
ARG BASH_VER=5.2.37-r0
# renovate: datasource=repology depName=alpine_3_22/curl versioning=loose
ARG CURL_VER=8.14.1-r1
# renovate: datasource=repology depName=alpine_3_22/jq versioning=loose
ARG JQ_VER=1.8.0-r0
RUN apk add --no-cache \
        "bash=$BASH_VER" \
        "curl=$CURL_VER" \
        "jq=$JQ_VER"
