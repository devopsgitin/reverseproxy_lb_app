FROM tomcat:8-alpine
COPY app1.war /usr/local/tomcat/webapps

FROM tomcat:8-alpine
COPY app2.war /usr/local/tomcat/webapps

FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf

FROM nginx:alpine
COPY index.html /usr/share/nginx/html
