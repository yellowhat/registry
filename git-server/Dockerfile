FROM docker.io/alpine:3.22.1

RUN apk add --no-cache git-daemon

COPY <<-EOT /init.sh
git init /git/repo
cd /git/repo
git config user.email me@me.com
git config user.name me

git daemon \\
    --verbose \\
    --base-path=/git \\
    --export-all \\
    -- \\
    /git/repo
EOT

ENTRYPOINT ["ash", "/init.sh"]
