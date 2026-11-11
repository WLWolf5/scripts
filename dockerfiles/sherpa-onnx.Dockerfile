FROM docker.io/library/python:3.15-trixie

# 设置环境变量，避免 apt 和 npm 在构建过程中产生交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 切换到 root 用户执行以下操作（基础镜像默认是 root，此处显式声明以保证清晰）
USER root

# 执行一系列配置和安装命令
RUN pip install sherpa-onnx -f https://k2-fsa.github.io/sherpa/onnx/rk-npu.html \
    && sed -i 's|http://deb.debian.org|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list.d/debian.sources \
    && sed -i 's|main|main contrib non-free non-free-firmware|g' /etc/apt/sources.list.d/debian.sources \
    && apt update \
    && apt install -y vim

# 清理 apt 缓存，减小镜像体积（可选，但推荐）
RUN apt clean && rm -rf /var/lib/apt/lists/*

# 指定工作目录（可选，根据您的项目需求调整）
# WORKDIR /app

# 如果需要暴露端口，请取消下一行的注释并修改端口号
# EXPOSE 3000

# 容器启动时的默认命令（您可以根据需要修改）
CMD ["/bin/bash"]
