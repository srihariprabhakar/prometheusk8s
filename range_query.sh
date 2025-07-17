#!/bin/bash
# Run a range query for a metric over the past 5 minutes

PROMETHEUS_URL="http://localhost:9090"
METRIC="node_cpu_seconds_total"
END=$(date +%s)
START=$((END - 300))

curl -G "${PROMETHEUS_URL}/api/v1/query_range" \
  --data-urlencode "query=${METRIC}" \
  --data-urlencode "start=${START}" \
  --data-urlencode "end=${END}" \
  --data-urlencode "step=15s"
