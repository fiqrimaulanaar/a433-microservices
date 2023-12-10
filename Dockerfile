FROM node:14-alpine 

# inisialisasi working directory app bekerja
WORKDIR /app

# copy file yang ada di directory Dockerfile berada kedalam working directory container
COPY . .

# Menentukan port aplikasi dan AMQP_URL
ENV PORT=3000 AMQP_URL=amqp://localhost:5672

# Menginstal dependencies untuk
RUN npm install

# ekspos port yang akan digunakan oleh aplikasi, yaitu 3000
EXPOSE 3000

# menjalankan perintah npm start ketika container diluncurkan
CMD ["npm", "start"]