#!/usr/bin/env bash
# How to gather version
set -euo pipefail

grep PODINFO_VER= Dockerfile | cut -d "=" -f 2
