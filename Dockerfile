# 基于成熟MC Docker基础镜像，支持Vanilla/Paper/Fabric/Forge
FROM itzg/minecraft-server:java21

# 复制自定义模组、配置到容器
COPY mods /mods
COPY config /config

# 环境变量默认配置（启动时可覆盖）
ENV EULA=TRUE
ENV VERSION=1.21.1
ENV TYPE=PAPER
ENV MEMORY=4G
ENV MAX_PLAYERS=20

# 开放MC默认端口
EXPOSE 25565