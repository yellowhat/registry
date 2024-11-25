#!/usr/bin/env bash
# How to gather version
set -euo pipefail

rs_ver=$(grep FROM Dockerfile | head -1 | cut -d ":" -f 2 | cut -d "-" -f 2)
pg_ver=$(grep FROM Dockerfile | tail -1 | cut -d ":" -f 2)

echo "${rs_ver}-${pg_ver}"
