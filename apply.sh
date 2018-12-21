#!/usr/bin/env bash
set -e
set -o pipefail

terraform apply infrastructure.tfplan

rm infrastructure.tfplan
