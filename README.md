# docker-test


## 도커 이미지 생성 후 도커 허브에 push

```bash
docker build --platform linux/amd64 -t jdi0222/docker-test .

docker images

docker run -d -p 8080:8080 jdi0222/docker-test

docker ps

docker login

docker push jdi0222/docker-test
```

## 서버에서 이미지 pull한 후 실행

```bash
# 우분투 시스템 패키지 업데이트
sudo apt-get update

# 필요한 패키지 설치
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Docker의 공식 GPG키를 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Docker의 공식 apt 저장소를 추가
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
 

# 시스템 패키지 업데이트
sudo apt-get update

# Docker 설치
sudo apt-get install docker-ce docker-ce-cli containerd.io

# 도커 실행상태 확인
sudo systemctl status docker

# pull
sudo docker pull jdi0222/docker-test

# 실행
sudo docker run -d -p 8080:8080 jdi0222/docker-test

# 실행 확인
sudo docker ps
```
