#!/bin/bash

set -e

build_dir="docs"
cd $build_dir
for chart in ../charts/*/; do
  if [[ -f "$chart"/Chart.yaml ]]; then
    helm package $chart
  fi
done
helm repo index ./