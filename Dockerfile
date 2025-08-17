# Temel imaj
FROM python:3.8-slim

# Çalışma dizini
WORKDIR /app

# Gereksinimleri kopyala
COPY py38_requirements.txt .

# Paketleri yükle
RUN pip install --no-cache-dir -r py38_requirements.txt

# Uygulamayı kopyala
COPY . .

# Container başlatıldığında çalışacak komut
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
