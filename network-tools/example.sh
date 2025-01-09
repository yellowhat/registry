#!/usr/bin/env bash
# Run a pod with this image
set -euo pipefail

kubectl apply -f - <<EOF
---
apiVersion: v1
kind: Pod
metadata:
  name: zzz
  namespace: default
spec:
  containers:
    - name: zzz
      image: ghcr.io/yellowhat/registry/network-tools:latest
      command:
        - sleep
        - infinity
EOF
