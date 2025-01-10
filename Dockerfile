# Użyj oficjalnego obrazu Pythona jako bazowego
FROM python:3.10-slim

# Ustaw katalog roboczy wewnątrz kontenera
WORKDIR /app

# Skopiuj pliki projektu do kontenera
COPY . .

# Zainstaluj wymagane pakiety
RUN pip install --no-cache-dir -r requirements.txt

# Określ polecenie startowe
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
