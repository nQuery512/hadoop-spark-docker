## Installation docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo $(docker-compose --version)

# Build des images 
sh build-images.sh

# Lancement des services
docker-compose up -d
echo 'Deploiement en cours, veuillez patienter...'
sleep 90
echo $(docker logs pyspark_notebook)
