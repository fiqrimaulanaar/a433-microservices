# mengambil image node dengan versi 14 dari docker hub
FROM node:14-bullseye 

# inisialisasi working directory app bekerja
WORKDIR /app

# copy file yang ada di directory Dockerfile berada kedalam working directory container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# ekspos port yang akan digunakan oleh aplikasi, yaitu 8080
EXPOSE 8080

# menjalankan perintah npm start ketika container diluncurkan
CMD ["npm", "start"]