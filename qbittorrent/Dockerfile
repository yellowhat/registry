# python is required to use search engine
FROM docker.io/python:3.13.0-alpine

ENV QBT_CONFIRM_LEGAL_NOTICE=1 \
    QBT_WEBUI_PORT=8080

# renovate: datasource=github-releases depName=userdocs/qbittorrent-nox-static
ARG QBITTORRENT_VERSION=release-5.0.0_v2.0.10
RUN wget \
    -O /qbittorrent \
    "https://github.com/userdocs/qbittorrent-nox-static/releases/download/${QBITTORRENT_VERSION}/x86_64-qbittorrent-nox" \
 && chmod +x /qbittorrent

ENTRYPOINT [ "/qbittorrent", "--profile=/tmp" ]
