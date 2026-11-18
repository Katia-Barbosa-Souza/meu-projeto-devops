#!/bin/bash
set -e
echo "[BUILD] Montando a aplicacao..."
mkdir -p ~/meu-projeto-devops/app
echo "<h1>Bootcamp Devops Matera 2026</h1><p>Build em $(date '+%d/%m/%Y %H:%M:%S')</p>" > ~/meu-projeto-devops/app/index.html

services:
  site:
    build: .
    ports:
     - "8080:80"
    depends_on:
     - visitas

  visitas:
    image: redis:alpine

  whoami:
    image: redis:alpine

  whoami:
    image: traefik/whoami
    ports:
      - "8081:80"

echo "[BUILD] OK - app/index.html gerado."

