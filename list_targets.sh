#!/bin/bash
# List active scrape targets

PROMETHEUS_URL="http://localhost:9090"

curl "${PROMETHEUS_URL}/api/v1/targets"
