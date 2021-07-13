# たまにこれでエラーになる
rm -rf ~/.docker/config.json

# いらないものを適宜削除
docker image prune
docker container prune
docker volumne prune
docker network prune
docker system df

# Dockerイメージを更新
docker build -t koki/biocdev .

# DockerHubに最新版をプッシュ
sudo docker login -u koki
img=`sudo docker images | grep koki/biocdev | awk '{print $3}'`
sudo docker tag $img koki/biocdev:$(date '+%Y%m%d')
sudo docker push koki/biocdev:$(date '+%Y%m%d')

# 中に入って動作確認する時用
# docker run -it --rm koki/biocdev:$(date '+%Y%m%d') bash