# Usa una imagen oficial de Apache desde Docker Hub
FROM httpd:2.4

# Copia tu archivo HTML al contenedor
COPY ./index.html /usr/local/apache2/htdocs/

# Expón el puerto 80 para acceso HTTP
EXPOSE 80
