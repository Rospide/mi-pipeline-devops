# 🚀 Pipeline DevOps con Docker y GitHub Actions

Este proyecto implementa un flujo de **Integración Continua (CI)** automatizado.
Cada vez que se sube código, un pipeline en la nube construye el contenedor y valida la aplicación.

## 🛠️ Tecnologías Usadas
* **Docker:** Para la contenerización de la aplicación (Python).
* **GitHub Actions:** Para la orquestación del pipeline CI/CD.
* **Python:** Lenguaje base de la aplicación.
* **Linux/Bash:** Scripting y entorno de despliegue.

## ⚙️ ¿Cómo funciona?
1.  El desarrollador hace un `push` al repositorio.
2.  GitHub detecta el cambio y activa el workflow definido en `.github/workflows/ci.yml`.
3.  Se levanta un runner (servidor) con Ubuntu.
4.  Se construye la imagen Docker en tiempo real.
5.  Se ejecuta un test de arranque para asegurar la estabilidad del build.

## 📋 Cómo ejecutarlo en local
Si tienes Docker instalado, puedes probarlo con:

```bash
docker build -t mi-app .
docker run mi-app
