docker build -t ghcr.io/fiqrimaulanaar/karsajobs:latest . #melakukan build docker images dari Dockerfile yang lokasinya sama dengan lokasi script shell berada dengan nama karsajobs dan tag latest

echo $CR_PAT | docker login ghcr.io -u fiqrimaulanaar --password-stdin #login dengan menggunakan token akun github

docker push ghcr.io/fiqrimaulanaar/karsajobs:latest #push atau mengirim images ke ghcr.io atau github packages