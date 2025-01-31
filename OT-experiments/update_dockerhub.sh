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
docker build -t koki/ot-experiments .

# Docker push（DockerHub）
docker login -u koki
docker push koki/ot-experiments:latest
img=`docker images | grep koki/ot-experiments | grep latest | awk '{print $3}'`
docker tag $img koki/ot-experiments:$(date '+%Y%m%d')
docker push koki/ot-experiments:$(date '+%Y%m%d')

# Docker push（GHCR）
docker tag $img ghcr.io/chiba-ai-med/ot-experiments:$(date '+%Y%m%d')
docker push ghcr.io/chiba-ai-med/ot-experiments:$(date '+%Y%m%d')

# マルチアーキテクチャ対応
# docker buildx create --use
# docker buildx inspect --bootstrap

# Docker build/push（DockerHub）
docker buildx build --platform linux/amd64,linux/arm64 -t koki/ot-experiments:latest -t koki/ot-experiments:$(date '+%Y%m%d') --push .

# Docker build/push（GHCR）
docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/chiba-ai-med/ot-experiments:latest -t ghcr.io/chiba-ai-med/ot-experiments:$(date '+%Y%m%d') --push .

# 中に入って動作確認する時用
# docker run -it --rm koki/ot-experiments:latest bash
# docker run -it --rm ghcr.io/chiba-ai-med/ot-experiments:latest bash
