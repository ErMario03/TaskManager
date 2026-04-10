FROM python:3.12

WORKDIR /app

# ✅ DEPENDENCIAS DEL SISTEMA (CLAVE PARA mysqlclient)
RUN apt-get update && apt-get install -y \
    gcc \
    pkg-config \
    default-libmysqlclient-dev \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*


# ✅ Dependencias Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ✅ Código
COPY . .

# ✅ Arranque del servidor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]