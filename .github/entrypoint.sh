#!/bin/bash

echo "Starting levant"

levant plan \
  -address="$1"
  -var service_name="$2" \
  -var artifact_url="$3" \
  -var artifact_file="$4" \
  job.nomad
# levant deploy \
#   -address="${SERVER_ADDR}"
#   -var service_name="${SERVICE_NAME}" \
#   -var artifact_url="${ARTIFACT_URL}" \
#   -var artifact_file="${ARTIFACT_FILE}" \
#   job.nomad
