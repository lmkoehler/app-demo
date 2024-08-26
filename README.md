# buildar image 
docker build -t leonardomkoehler/app-demo:v2 . && docker images

# create image
docker image tag 07e0984a10e8 leonardomkoehler/app-demo:v2

# update image  
docker push leonardomkoehler/app-demo:v2

# executar image 
docker run -it -p 80:80 --name app-demo -d leonardomkoehler/app-demo:v2

# 
docker ps -a
# entrar no container  
docker exec -it 0b011e5d2992 sh
