FROM 172.16.5.27/nginx/nginx:1.18.0

RUN echo "Asia/Shanghai" > /etc/timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD ./conf.d   /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]
