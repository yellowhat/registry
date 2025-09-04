FROM docker.io/golang:1.25.1 as smartctl_exporter

# renovate: datasource=github-releases depName=prometheus-community/smartctl_exporter
ARG SMART_VER=v0.14.0
RUN git clone https://github.com/prometheus-community/smartctl_exporter \
        --depth 1 \
        --branch "$SMART_VER" \
 && cd smartctl_exporter \
 && go build \
 && cp smartctl_exporter /

FROM docker.io/debian:13.0 as smartctl

RUN apt-get update \
 && apt-get install -y automake make git g++ \
 && git clone https://github.com/smartmontools/smartmontools \
 && cd smartmontools \
 && git checkout f06829d08be7ee0d25748431961672dbc7e8f6f5 \
 && cd smartmontools \
 && ./autogen.sh --force \
 && ./configure LDFLAGS="-static" \
 && make \
 && mv smartctl /

FROM docker.io/debian:13.0-slim

# smartctl_exporter looks for /usr/sbin/smartctl
COPY --from=smartctl /smartctl /usr/sbin/smartctl

COPY --from=smartctl_exporter /smartctl_exporter /bin/

ENTRYPOINT  ["/bin/smartctl_exporter"]
