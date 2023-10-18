# Usar la imagen oficial de Nginx como base
FROM nginx:latest

# Eliminar el archivo de configuración de Nginx existente
RUN rm /etc/nginx/conf.d/default.conf

# Copiar tu archivo index.html al directorio de Nginx en la imagen
COPY index.html /usr/share/nginx/html

# Exponer el puerto 80 (predeterminado de Nginx)
EXPOSE 80

# Comando para iniciar el servidor Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
