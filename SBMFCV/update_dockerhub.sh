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

# Docker build
docker build -t koki/sbmfcv_component:latest .

# Docker push（DockerHub）
docker login -u koki
docker push koki/sbmfcv_component:latest
img=`docker images | grep koki/sbmfcv_component | grep latest | awk '{print $3}'`
docker tag $img koki/sbmfcv_component:$(date '+%Y%m%d')
docker push koki/sbmfcv_component:$(date '+%Y%m%d')

# Docker push（GHCR）
docker tag $img ghcr.io/chiba-ai-med/sbmfcv_component:$(date '+%Y%m%d')
docker push ghcr.io/chiba-ai-med/sbmfcv_component:$(date '+%Y%m%d')

# マルチアーキテクチャ対応
# docker buildx create --use
# docker buildx inspect --bootstrap

# Docker build/push（DockerHub）
docker buildx build --platform linux/amd64,linux/arm64 -t koki/sbmfcv_component:latest -t koki/sbmfcv_component:$(date '+%Y%m%d') --push .

# Docker build/push（GHCR）
docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/chiba-ai-med/sbmfcv_component:latest -t ghcr.io/chiba-ai-med/sbmfcv_component:$(date '+%Y%m%d') --push .

# 中に入って動作確認する時用
# docker run -it --rm koki/sbmfcv_component:latest bash
# docker run -it --rm ghcr.io/chiba-ai-med/sbmfcv_component:latest bash
