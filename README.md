# Prometheus API Scripts

This repository contains four standalone Bash scripts to interact with a Prometheus server using its HTTP API. Each script targets a specific operation useful for monitoring, troubleshooting, or data analysis.

## Requirements

- A running Prometheus server (default assumed: `http://localhost:9090`)
- Bash and `curl` installed
- Optional: Make the scripts executable using:

```bash
chmod +x *.sh
```

## Scripts Overview

### 1. `query_metrics.sh`
**Description:**  
Queries a specific Prometheus metric (default: `node_cpu_seconds_total`) and retrieves its current/latest value at the moment of execution.

**Use case:**  
Quickly check the current status of a metric like CPU usage, memory usage, or HTTP request count.

### 2. `range_query.sh`
**Description:**  
Performs a time-series (range) query for a metric over the last 5 minutes, sampling data every 15 seconds.

**Use case:**  
Analyze how a metric has changed over time — useful for plotting graphs or observing trends in resource usage or application performance.

### 3. `list_targets.sh`
**Description:**  
Lists all scrape targets that Prometheus is monitoring, including their current state (up/down) and endpoint details.

**Use case:**  
Verify which services Prometheus is scraping and whether they are currently reachable.

### 4. `list_alerts.sh`
**Description:**  
Displays the current state of all configured alerts — including those that are pending, firing, or inactive.

**Use case:**  
Check what alerts are active in the system and confirm if alerting rules are being triggered as expected.

## Customization

Each script includes a `PROMETHEUS_URL` variable at the top. You can edit this to point to a different Prometheus server or port if needed.

## Example

```bash
# Query current value of node_cpu_seconds_total
./query_metrics.sh

# Run a range query for the last 5 minutes
./range_query.sh

# List scrape targets
./list_targets.sh

# List current alerts
./list_alerts.sh
```

This set is ideal for quick API checks, scripting CI/CD observability steps, or just learning how to work with Prometheus APIs.

