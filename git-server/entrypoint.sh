#!/usr/bin/env ash
# shellcheck shell=dash
set -euo pipefail

git init /git/repo
cd /git/repo
git config user.email me@me.com
git config user.name me

git daemon \
    --verbose \
    --base-path=/git \
    --export-all \
    -- \
    /git/repo
