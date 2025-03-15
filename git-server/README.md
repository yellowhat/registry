# git-server

## Run as root

```bash
podman run -it --rm -p 9418:9418 ghcr.io/yellowhat/registry/git-server:latest
git clone git://localhost/repo
```

## Run as user

```bash
podman run \
    --interactive \
    --tty \
    --rm \
    --publish 9418:9418 \
    --mount type=tmpfs,tmpfs-size=512M,destination=/git \
    --user 65534 \
    ghcr.io/yellowhat/registry/git-server:latest
```
