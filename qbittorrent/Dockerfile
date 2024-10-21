FROM docker.io/alpine:3.20.3

ENV QBT_CONFIRM_LEGAL_NOTICE=1 \
    QBT_WEBUI_PORT=8080

# renovate: datasource=github-releases depName=userdocs/qbittorrent-nox-static
ARG QBITTORRENT_VERSION=release-5.0.0_v2.0.10
RUN wget \
    -O /qbittorrent \
    "https://github.com/userdocs/qbittorrent-nox-static/releases/download/${QBITTORRENT_VERSION}/x86_64-qbittorrent-nox" \
 && chmod +x /qbittorrent

ENTRYPOINT [ "/qbittorrent", "--profile=/tmp" ]
