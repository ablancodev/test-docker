FROM wordpress:php8.2

# Creación de un directorio de trabajo en Docker
WORKDIR /var/www/html

# Variables de entorno
ENV WORDPRESS_DB_HOST=mysql
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=password
ENV WORDPRESS_DB_NAME=wp


# Instalación de dependencias
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# Exposición de un puerto 
EXPOSE 8080

# Copiar todo el código
COPY ./wp .

# Ejecución del código 
#CMD ["flask", "run"]
