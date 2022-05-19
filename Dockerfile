FROM node:18-alpine

# diretório criado no container
WORKDIR /usr/src/

# copia todos os arquivos para o container
COPY . . 

RUN npm i 
RUN npx prisma generate
RUN npm run build
#só executa quando rodarmos a imagem
CMD ["node", "dist/src/server.js"] 