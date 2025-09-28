FROM ghcr.io/actions/actions-runner:latest

# 切换到 root
USER root

# 复制启动脚本
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 切换回 runner 用户
USER runner

# 使用 build ARG 或环境变量传递 token
ARG RUNNER_TOKEN
ENV RUNNER_TOKEN=${RUNNER_TOKEN}

# 如果需要其他变量，也可以 ENV 传递
ENV RUNNER_NAME=my-runner
ENV RUNNER_ORG_URL=https://github.com/nechao136
ENV RUNNER_WORKDIR=/tmp/runner

# 使用启动脚本
CMD ["/entrypoint.sh"]

