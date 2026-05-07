FROM nginx:alpine
# Memaksa Nginx agar mendengarkan port yang diberikan Railway secara dinamis
CMD ["/bin/sh", "-c", "sed -i 's/listen  80;/listen '\"${PORT:-80}\"';/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
COPY . /usr/share/nginx/html
