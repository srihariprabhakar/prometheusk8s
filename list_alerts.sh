#!/bin/bash
# List current alerts from Prometheus

PROMETHEUS_URL="http://localhost:9090"

curl "${PROMETHEUS_URL}/api/v1/alerts"
