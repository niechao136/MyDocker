docker run -d \
  --name github-runner \
  --restart unless-stopped \
  -e RUNNER_NAME=my-runner \
  -e RUNNER_WORKDIR=/tmp/runner \
  -v runner-workdir:/tmp/runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  ghcr.io/actions/actions-runner:latest \
  bash -c "./config.sh --url https://github.com/nechao136 --token AHV7KLX7BSA3GRNRNLTNJQTI3D62S --unattended && ./run.sh"
