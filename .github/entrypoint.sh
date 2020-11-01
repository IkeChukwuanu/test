#!/bin/sh

address=http://${address}:4646

levant deploy \
  -force \
  -address=${address} \
  -var service_name=${service_name} \
  -var artifact_url=${artifact_url} \
  .github/job.nomad
