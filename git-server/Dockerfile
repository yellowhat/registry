FROM docker.io/alpine:3.20.1

RUN apk add --no-cache git-daemon \
 && git config --global user.email a@me.com \
 && git config --global user.name me \
 && git init /git/repo

ENTRYPOINT ["git", "daemon", "--verbose", "--base-path=/git", "--export-all", "--", "/git/repo"]
