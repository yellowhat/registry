FROM docker.io/alpine:3.21.2

RUN apk add --no-cache curl \
 && curl \
        --location \
        https://output.circle-artifacts.com/output/job/2dffdcb1-4eed-43d8-b5b1-23a94a8165c3/artifacts/0/builds/smartmontools-linux-x86_64-static-7.5-r5666.tar.gz \
        | tar xz \
            --no-same-owner \
            --directory / \
 # smartctl_exporter looks for /usr/sbin/smartctl
 && ln -s /usr/local/sbin/smartctl /usr/sbin/smartctl

COPY --from=docker.io/prometheuscommunity/smartctl-exporter:v0.13.0 /bin/smartctl_exporter /bin/

ENTRYPOINT  ["/bin/smartctl_exporter"]
