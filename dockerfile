# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia los archivos del proyecto al directorio donde Nginx sirve archivos estaticos
COPY . /usr/share/nginx/html

# Abre el puerto 80 para el trafico HTTP
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]