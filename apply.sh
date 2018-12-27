#!/usr/bin/env bash

set -e

terraform apply infrastructure.tfplan

rm infrastructure.tfplan
