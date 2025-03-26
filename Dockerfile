FROM n8nio/n8n:latest

# Imposta il working directory
WORKDIR /data

# Espone la porta di default di n8n
EXPOSE 5678

# Avvia N8n con meno processi per ridurre il consumo di risorse
CMD ["n8n", "--tunnel"]
