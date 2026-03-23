#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mathjax="$PREFIX/lib/mathjax"
bin_dir="$PREFIX/bin"

mkdir -p "$mathjax"
rm -f build_env_setup.sh conda_build.sh metadata_conda_debug.yaml
cp -r ./* "$mathjax/"

mkdir -p "${bin_dir}"
cp "${RECIPE_DIR}/mathjax-path" "${bin_dir}/"
chmod +x "${bin_dir}/mathjax-path"
