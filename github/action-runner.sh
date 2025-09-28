docker run -it --rm \
  -e RUNNER_WORKDIR=/tmp/runner \
  -v runner-workdir:/tmp/runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  ghcr.io/actions/actions-runner:latest \
  bash -c "./config.sh --url https://github.com/nechao136 --token AHV7KLSSPSG543B5WILLJBTI3DRXS --unattended && ./run.sh"
