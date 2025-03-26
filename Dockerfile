# Usa l'immagine base ufficiale di N8n
FROM node:16-alpine

# Imposta la directory di lavoro
WORKDIR /app

# Copia il file package.json (assicurati che il file esista e sia configurato correttamente)
COPY package.json package-lock.json ./

# Installa le dipendenze
RUN npm install --production

# Esponi la porta 5678 per l'app di N8n
EXPOSE 5678

# Imposta le variabili di ambiente
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_LOG_LEVEL=debug

# Comando per avviare N8n
CMD ["npm", "run", "start"]
