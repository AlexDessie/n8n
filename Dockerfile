# Usa l'immagine base ufficiale di Node.js (assicurati di usare una versione compatibile)
FROM node:20-alpine

# Setta la directory di lavoro all'interno del container
WORKDIR /app

# Copia i file package.json e pnpm-lock.yaml per installare le dipendenze
COPY package.json pnpm-lock.yaml ./

# Installa pnpm e le dipendenze del progetto
RUN npm install -g pnpm
RUN pnpm install --prod

# Copia il resto dei file del progetto
COPY . .

# Setta variabili di ambiente necessarie
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_LOG_LEVEL=debug
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Esponi la porta per il servizio
EXPOSE 5678

# Imposta il comando per avviare il servizio N8n usando pnpm
CMD ["pnpm", "start"]
