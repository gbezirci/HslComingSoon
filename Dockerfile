# Dockerfile
FROM nginx:alpine

# index.html dosyasını ve assets klasörünü nginx HTML klasörüne kopyalayın
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

# nginx sunucusunu başlatın
CMD ["nginx", "-g", "daemon off;"]
