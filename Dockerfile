# image de base
FROM node:18
# dossier de travail
WORKDIR /app
# copier fichiers
COPY package*.json ./
# installer dépendances
RUN npm install
# copier le reste
COPY . .
# build app
RUN npm run build
# exposer port
EXPOSE 3000
# lancer app
CMD ["node", "dist/main"]