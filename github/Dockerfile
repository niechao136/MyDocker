FROM ghcr.io/actions/actions-runner:latest

# 使用 build ARG 或环境变量传递 token
ARG RUNNER_TOKEN
ENV RUNNER_TOKEN=${RUNNER_TOKEN}

# 如果需要其他变量，也可以 ENV 传递
ENV RUNNER_NAME=my-runner
ENV RUNNER_ORG_URL=https://github.com/nechao136
ENV RUNNER_WORKDIR=/tmp/runner

# 使用 bash -c 顺序执行注册 + 运行
CMD ["bash", "-c", "./config.sh --url $RUNNER_ORG_URL --token $RUNNER_TOKEN --unattended && ./run.sh"]

