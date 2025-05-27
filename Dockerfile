FROM node:20.11.1-alpine3.19

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
