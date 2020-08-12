FROM openjdk:8-jdk-alpine
#设置时区
RUN apk --no-cache add tzdata  && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
#设置字体(解决图形验证码无法显示的问题)
RUN apk add --update ttf-dejavu fontconfig
