FROM jenkins/jenkins:lts

USER root

# 安装 docker-compose
RUN apt-get update && apt-get install -y \
    curl docker-compose \
    && apt-get clean

# 安装 Jenkins 插件支持
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt

# 添加初始化脚本（管理员用户配置）
COPY init.groovy.d/ /usr/share/jenkins/ref/init.groovy.d/

USER jenkins
