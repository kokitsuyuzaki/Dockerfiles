# たまにこれでエラーになる
rm -rf ~/.docker/config.json

# いらないものを適宜削除
docker image prune
docker container prune
docker volumne prune
docker network prune
docker system df

# Dockerイメージを更新
docker build -t koki/lwp_pl .

# DockerHubに最新版をプッシュ
docker login -u koki -p medical
img=`docker images | grep koki/lwp_pl | awk '{print $3}'`
docker tag $img koki/lwp_pl:latest
docker push koki/lwp_pl:latest

# 中に入って動作確認する時用
# docker run -it --rm koki/sctensor-experiments:latest /bin/bash