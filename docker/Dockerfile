FROM alpine:latest

RUN apk add --no-cache curl tar

# 安装 Sing-Box
RUN curl -Lo /tmp/sb.tar.gz https://github.com/SagerNet/sing-box/releases/latest/download/sing-box-linux-amd64.tar.gz \
    && tar -xzf /tmp/sb.tar.gz -C /tmp/ \
    && install /tmp/sing-box-*/sing-box /usr/local/bin/sing-box

COPY entrypoint.sh /entrypoint.sh
COPY ../config/config-template.json /etc/sing-box/config.json

RUN chmod +x /entrypoint.sh

EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
