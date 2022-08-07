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

3.dockerfile和docker-compose的区别在哪里

4.dockerfile如何用.sh文件启动

5.程序的jar包怎么一起做成docker-compose或者配置环境后怎么单独的运行

6.镜像怎么制作



https://juejin.cn/post/7011721238892675102