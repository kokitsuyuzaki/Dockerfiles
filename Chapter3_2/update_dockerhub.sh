# たまにこれでエラーになる
rm -rf ~/.docker/config.json

# いらないものを適宜削除
docker image prune
docker container prune
docker volumne prune
docker network prune
docker system df

# Dockerイメージを更新
docker build -t koki/chapter3_2 .

# DockerHubに最新版をプッシュ
sudo docker login -u koki
img=`sudo docker images | grep koki/chapter3_2 | awk '{print $3}'`
sudo docker tag $img koki/chapter3_2:latest
sudo docker push koki/chapter3_2:latest

# 中に入って動作確認する時用
# docker run -it --rm koki/sctensor-experiments:latest /bin/bash