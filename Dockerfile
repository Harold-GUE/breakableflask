# Utilise une image Python officielle légère
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier des dépendances et les installe
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie le reste du code source
COPY . .

# Expose le port de l'application Flask
EXPOSE 5000

# Commande par défaut pour lancer l'application
CMD ["python", "app.py"]