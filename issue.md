1.拉下来windows下配置文件是怎么映射的

docker run -p 6379:6379
         --name redis 
         -v D:/DockerContainer/redis-6.2.2/conf/redis.conf:/etc/redis/redis.conf 
         -v D:/DockerContainer/redis-6.2.2/data:/data
         -d redis
         redis-server /etc/redis/redis.conf --appendonly yes
<!-- 
-p 6379:6379:把容器内的6379端口映射到宿主机6379端口
-v D:/DockerContainer/redis-6.2.2/conf/redis.conf:/etc/redis/redis.conf：把宿主机配置好的redis.conf放到容器内的这个位置中
-v D:/DockerContainer/redis-6.2.2/data:/data：把redis持久化的数据在宿主机内显示，做数据备份
redis-server /etc/redis/redis.conf：这个是关键配置，让redis不是无配置启动，而是按照这个redis.conf的配置启动
–appendonly yes：redis启动后数据持久化
-->
2.卷volume是怎么映射的
<!-- 
    这个docker下的data路径要查，配置config路径也要查
    linux下：
        自定路径：原路径
        - "/docker/apollo/logs/100003172:/opt/logs/100003172"
    window下：
        \\wsl$\docker-desktop-data\version-pack-data\community\docker\volumes\[VOLUME_ID]
        #这个试试
        \\wsl$\docker-desktop-data\data\docker\volumes
    
 -->

3.dockerfile和docker-compose的区别在哪里

<!-- 
    1.build可以直接启动dockerfile
    # build:
      # context: ./data/mysql
      # 在dockerfile可以配置替换的配置，进行添加
      # dockerfile: dockerfile

    2.dockerfile可以直接部署开发单个jar包
 -->
4.dockerfile如何用.sh文件启动
<!-- 
    #!/bin/bash

# docker-compose文件目录
DOCKER_COMPOSE_FILE=docker-compose.yml
# DOCKER_COMPOSE_FILE=mysql-redis-docker-compose.yml
# DOCKER_COMPOSE_FILE=rocketmq-docker-compose.yml

# 生成镜像
docker-compose build --no-cache
# 启动docker-compose
docker-compose up -d

# 终端运行
# docker-compose -f docker-compose.yml up -d
 -->

5.network ping通，容器之间相互通信

<!-- 

#配置 networkds
networks:
  network:
    # name:
    driver: bridge    
参考链接：
    https://docs.docker.com/config/containers/multi-service_container/
    https://www.cnblogs.com/luo-c/p/15976956.html

 -->



https://juejin.cn/post/7011721238892675102

