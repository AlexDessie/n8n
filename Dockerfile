# Usa l'immagine di base di n8n
FROM n8nio/n8n:latest

# Installa le dipendenze necessarie (se n8n non è installato correttamente)
USER root
RUN apk add --no-cache --update bash

# Imposta la directory di lavoro
WORKDIR /data

# Espone la porta 5678
EXPOSE 5678

# Aggiungi variabili di ambiente per evitare errori
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Avvia il comando n8n
CMD ["n8n"]
