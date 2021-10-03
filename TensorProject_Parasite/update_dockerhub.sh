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
docker build -t koki/tensor-project-parasite .

# DockerHubに最新版をプッシュ
docker login -u koki
img=`docker images | grep koki/tensor-project-parasite | awk '{print $3}'`
docker tag $img koki/tensor-project-parasite:$(date '+%Y%m%d')
docker push koki/tensor-project-parasite:$(date '+%Y%m%d')

# 中に入って動作確認する時用
# docker run -it --rm koki/tensor-project-parasite:$(date '+%Y%m%d') bash