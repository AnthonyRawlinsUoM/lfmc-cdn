FROM alpine:3.6

RUN apk -U add nginx \
&& touch /var/www/index.html

# RUN useradd -m -d /home/${USER} ${USER} && chown -R ${USER} /home/${USER} 
# RUN chown -R ${USER} /var/www

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf

ENV TZ Australia/Melbourne

EXPOSE 8088
ENTRYPOINT nginx
