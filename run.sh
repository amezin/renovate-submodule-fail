#!/bin/bash

set -ex

pnpm -C renovate install

exec pnpm -C renovate start \
    "--base-dir=${PWD}/basedir" \
    --dry-run=full \
    --persist-repo-data=true \
    --report-type=logging \
    amezin/renovate-submodule-fail
