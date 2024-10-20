#!/usr/bin/env bash
# How to gather version
set -euo pipefail

grep "QBITTORRENT_VERSION=" Dockerfile | cut -d "=" -f 2 | cut -d "-" -f 2 | cut -d "_" -f 1
