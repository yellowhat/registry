FROM docker.io/golang:1.24.4 AS build

# renovate: datasource=docker depName=registry.gitlab.com/yellowhat-labs/podinfo
ARG PODINFO_VER=v1.3.1

# Create statically linked executable
ARG CGO_ENABLED=0

WORKDIR /app

RUN git clone https://gitlab.com/yellowhat-labs/podinfo/ --branch "$PODINFO_VER" \
 && cd podinfo \
 && go mod download \
 && go mod verify \
 && go build -o /podinfo

FROM scratch

COPY --from=build /podinfo /podinfo

ENTRYPOINT ["/podinfo"]
