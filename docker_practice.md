## docker cli

docker ps // 도커 프로세스 확인  
docker ps -a // 종료된 도커 프로세스 확인  
docker [docker ps dontainer id] [docker image name] // docker 프로세스에 설치된 최신 상태 commit
docker push [image name]:[tag name] // 도커 hub에 push
docker pull [image name]:[tag name] // 도커 hub에서 pull

## centos 8 java project

centos 8 리포지토리 못찾을때

sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-\*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-\*

> yum update
> yum upgrade
> yum install java-11-openjdk-devel
> yum install net-tools
> yum install sudo
> yum install vim
> yum install passwd vim passwd openssl curl wget sudo -y
> dnf install maven

## 도커 에러 어떻게 처리할지

docker rmi centos:latest
Error response from daemon: conflict: unable to remove repository reference "centos:latest" (must force) - container 57508b49f2d2 is using its referenced image e6a0117ec169
