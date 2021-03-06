#!/bin/bash
PACKAGE_VERSION=$(grep 'version' package.json | cut -d '"' -f4)

docker build -t wy373226722/mysql-backup:$PACKAGE_VERSION .

docker tag wy373226722/mysql-backup:$PACKAGE_VERSION registry.cn-shenzhen.aliyuncs.com/yi-ge/mysql-backup:$PACKAGE_VERSION
docker tag wy373226722/mysql-backup:$PACKAGE_VERSION registry.cn-shenzhen.aliyuncs.com/yi-ge/mysql-backup:latest
docker tag wy373226722/mysql-backup:$PACKAGE_VERSION ccr.ccs.tencentyun.com/yi-ge/mysql-backup:$PACKAGE_VERSION
docker tag wy373226722/mysql-backup:$PACKAGE_VERSION ccr.ccs.tencentyun.com/yi-ge/mysql-backup:latest
docker tag wy373226722/mysql-backup:$PACKAGE_VERSION wy373226722/mysql-backup:latest

docker push ccr.ccs.tencentyun.com/yi-ge/mysql-backup:$PACKAGE_VERSION
docker push ccr.ccs.tencentyun.com/yi-ge/mysql-backup:latest
docker push registry.cn-shenzhen.aliyuncs.com/yi-ge/mysql-backup:$PACKAGE_VERSION
docker push registry.cn-shenzhen.aliyuncs.com/yi-ge/mysql-backup:latest
docker push wy373226722/mysql-backup:$PACKAGE_VERSION
docker push wy373226722/mysql-backup:latest
