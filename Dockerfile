# Usamos una imagen ligera de Python (Linux Alpine o Slim)
FROM python:3.9-slim

# Creamos directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo desde tu Ubuntu (.) al contenedor (.)
COPY app.py .

# Comando que se ejecuta al arrancar el contenedor
CMD ["python", "app.py"]
