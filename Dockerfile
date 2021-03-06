FROM nginx

EXPOSE 443
EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY cert.pem /etc/nginx/cert.pem
COPY certkey.key /etc/nginx/certkey.key

COPY start-nginx.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-nginx.sh

ENTRYPOINT ["start-nginx.sh"]
