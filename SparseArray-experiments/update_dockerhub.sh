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
docker build -t koki/sparsearray-experiments .

# Docker push（DockerHub）
docker login -u koki
docker push koki/sparsearray-experiments:latest
img=`docker images | grep koki/sparsearray-experiments | grep latest | awk '{print $3}'`
docker tag $img koki/sparsearray-experiments:$(date '+%Y%m%d')
docker push koki/sparsearray-experiments:$(date '+%Y%m%d')

# Docker push（GHCR）
# GH_TOKEN="..."
# echo $GH_TOKEN | docker login ghcr.io -u <your-github-username> --password-stdin

docker tag $img ghcr.io/rikenbit/sparsearray-experiments:$(date '+%Y%m%d')
docker push ghcr.io/rikenbit/sparsearray-experiments:$(date '+%Y%m%d')

# マルチアーキテクチャ対応
# docker buildx create --use
# docker buildx inspect --bootstrap
# docker buildx create --name mybuilder --use --driver docker-container
# docker buildx inspect --bootstrap

# Docker build/push（DockerHub）
docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t koki/sparsearray-experiments:latest --push .
docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t koki/sparsearray-experiments:$(date '+%Y%m%d') --push .

# Docker build/push（GHCR）
docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t ghcr.io/rikenbit/sparsearray-experiments:latest --push .
docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t ghcr.io/rikenbit/sparsearray-experiments:$(date '+%Y%m%d') --push .

# 中に入って動作確認する時用
# docker run -it --rm koki/sparsearray-experiments:latest bash
# docker run -it --rm ghcr.io/rikenbit/sparsearray-experiments:latest bash
