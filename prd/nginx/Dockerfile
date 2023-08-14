FROM nginx:1.18

RUN rm -f /etc/nginx/conf.d/*

ADD ./nginx.conf /etc/nginx/conf.d/profile_app.conf

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf