#!/usr/bin/env bash

echo "downloading all necessary stuff and installing packages not covered by bootstrap.py"
docker build -t cfmeqe/ff_prepare_to_build -f ff_from_source/Dockerfile.ff_prepare_to_build .
echo "building env and Firefox"
docker build -t cfmeqe/ff_build -f ff_from_source/Dockerfile.ff_build .
echo "installing ff"
docker build -t cfmeqe/ff_install -f ff_from_source/Dockerfile.ff_install .
echo "adding run part"
docker build -t cfmeqe/ff_run -f ff_from_source/Dockerfile.ff_run .
