# Utilizar una imagen base de Python
FROM python:3.13.0b2-alpine3.20

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requerimientos y la aplicación al contenedor
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY templates/ templates/

# Instalar las dependencias
RUN pip install -r requirements.txt

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
