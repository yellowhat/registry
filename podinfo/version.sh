#!/usr/bin/env bash
# How to gather version
set -euo pipefail

grep branch Dockerfile | cut -d " " -f 6
