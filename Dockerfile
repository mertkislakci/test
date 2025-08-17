# Hazır GHCR image'ını temel al
FROM mertkslkc/appfaceapi:tagname

# Çalışma dizini (opsiyonel, zaten image içinde varsa gerek yok)
WORKDIR /app

# Eğer ek dosya kopyalamak istiyorsan
# COPY . .

# Container başlatıldığında çalışacak komut
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

