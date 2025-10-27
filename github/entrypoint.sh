#!/bin/bash
set -e

cd /home/runner
echo "Current directory: $(pwd)"

# Runner 配置标识目录
RUNNER_CONFIG_DIR="/tmp/runner/.runner"

# 如果未配置过，执行 config.sh
if [ ! -d "$RUNNER_CONFIG_DIR" ]; then
  echo "Runner not configured, running config.sh..."
  ./config.sh --url "$RUNNER_ORG_URL" --token "$RUNNER_TOKEN" --unattended
else
  echo "Runner already configured, skipping config.sh."
fi

# 永久运行 runner
exec ./run.sh
