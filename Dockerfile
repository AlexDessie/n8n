FROM n8nio/n8n:latest

# Imposta la directory di lavoro
WORKDIR /data

# Espone la porta di default di n8n
EXPOSE 5678

# Forza i permessi per evitare errori
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Avvia N8n
CMD ["n8n"]
