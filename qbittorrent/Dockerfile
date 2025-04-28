# python is required to use search engine
FROM docker.io/python:3.13.3-alpine

ENV QBT_CONFIRM_LEGAL_NOTICE=1 \
    QBT_WEBUI_PORT=8080

# renovate: datasource=github-releases depName=userdocs/qbittorrent-nox-static versioning=loose
ARG QBITTORRENT_VERSION=5.1.0
RUN wget \
    -O /qbittorrent \
    "https://github.com/userdocs/qbittorrent-nox-static/releases/download/release-${QBITTORRENT_VERSION}_v2.0.11/x86_64-qbittorrent-nox" \
 && chmod +x /qbittorrent

ENTRYPOINT [ "/qbittorrent", "--profile=/tmp" ]
