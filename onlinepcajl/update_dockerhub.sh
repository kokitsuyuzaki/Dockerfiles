# たまにこれでエラーになる
rm -rf ~/.docker/config.json

# いらないものを適宜削除
docker rm $(docker ps -q -a)
docker rmi $(docker images -q) -f
docker image prune -f
docker container prune -f
docker volume prune -f
docker network prune -f
docker builder prune -f
docker system df

# Dockerイメージを更新
docker build -t koki/onlinepcajl .

# DockerHubに最新版をプッシュ
img=`docker images | grep koki/onlinepcajl | awk '{print $3}'`
docker tag $img koki/onlinepcajl:$(date '+%Y%m%d')

docker login -u koki
docker push koki/onlinepcajl:$(date '+%Y%m%d')

docker login ghcr.io -u kokitsuyuzaki
docker tag $img ghcr.io/kokitsuyuzaki/onlinepcajl:$(date '+%Y%m%d')
docker push ghcr.io/kokitsuyuzaki/onlinepcajl:$(date '+%Y%m%d')

# 中に入って動作確認する時用
# docker run -it --rm koki/onlinepcajl:$(date '+%Y%m%d') bash
# docker run -it --rm ghcr.io/kokitsuyuzaki/onlinepcajl:$(date '+%Y%m%d') bash
