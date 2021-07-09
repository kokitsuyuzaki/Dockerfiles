# たまにこれでエラーになる
rm -rf ~/.docker/config.json

# いらないものを適宜削除
docker image prune
docker container prune
docker volumne prune
docker network prune
docker system df

# Dockerイメージを更新
docker build -t koki/axel .

# DockerHubに最新版をプッシュ
docker login -u koki -p medical
img=`docker images | grep koki/axel | awk '{print $3}'`
docker tag $img koki/axel:$(date '+%Y%m%d')
docker push koki/axel:$(date '+%Y%m%d')

# 中に入って動作確認する時用
# docker run -it --rm koki/sctensor-experiments:$(date '+%Y%m%d') /bin/bash