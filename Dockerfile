#FROM node:20.11.1-alpine3.19 //This is for galaxycloud

#WORKDIR /app

#COPY package.json ./
#COPY app.js ./

#EXPOSE 3000

#RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x index.js
    
#CMD ["node", "index.js"]

FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
