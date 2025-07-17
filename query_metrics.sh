#!/bin/bash
# Query Prometheus for a specific metric (e.g., CPU usage)

PROMETHEUS_URL="http://localhost:9090"
METRIC="node_cpu_seconds_total"

curl -G "${PROMETHEUS_URL}/api/v1/query" \
  --data-urlencode "query=${METRIC}"
