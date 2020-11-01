# Container image that runs your code
FROM jrasell/levant

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY job.nomad /job.nomad

RUN levant deploy \
  -address="$1"
  -var service_name="$2" \
  -var artifact_url="$3" \
  -var artifact_file="$4" \
  job.nomad

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]