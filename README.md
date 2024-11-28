```markdown
# Proyecto de Página Web Estática

Este proyecto es una página web estática construida con HTML, CSS, JavaScript y Bootstrap, y se despliega utilizando Docker y Nginx.

## Requisitos

- Docker
- Docker Compose

## Estructura del Proyecto

```
.
??? Dockerfile
??? docker-compose.yml
??? index.html
??? css/
?   ??? styles.css
??? js/
?   ??? scripts.js
??? ...
```

## Dockerfile

El `Dockerfile` utilizado para construir la imagen Docker:

```Dockerfile
# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia los archivos del proyecto al directorio donde Nginx sirve archivos estáticos
COPY . /usr/share/nginx/html

# Abre el puerto 80 para el tráfico HTTP
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
```

## docker-compose.yml

El archivo `docker-compose.yml` para definir y ejecutar el contenedor:

```yaml
version: '3'
services:
  web:
    build: .
    ports:
      - "8080:80"
    volumes:
      - .:/usr/share/nginx/html
```

## Pasos para Crear la Imagen y Realizar el Deploy

1. Clona este repositorio en tu máquina local.
2. Navega al directorio del proyecto.
3. Construye la imagen Docker y levanta el contenedor utilizando Docker Compose:

   ```sh
   docker-compose up --build
   ```

4. Abre tu navegador web y visita `http://localhost` para ver tu página web estática en funcionamiento.

## Notas

- Asegúrate de que Docker y Docker Compose estén instalados y funcionando correctamente en tu sistema.
- Si realizas cambios en los archivos de tu proyecto, Docker Compose los reflejará automáticamente debido al volumen montado.

```

Este `README.md` proporciona una guía clara sobre cómo construir la imagen Docker y desplegar tu aplicación web estática utilizando Docker y Docker Compose.