#utiliser une image node.js
FROM node:18 

# mettre le dossier de travail a /app
workdir /app

# copier le package.jon et le package-lock.json
COPY package*.json

#installer les dependance 
RUN npm install 

# copier le rest des fichier 
COPY .. 

#expose port 3000
EXPOSE 3000

# demare l'appliction 
CMD ["npm", "start"]