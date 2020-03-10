## apache tomcat
docker上でJSPを動作させるまで  
作成したJSPソースをdocker上に配置する

### tomcat container起動
```bash
# image pull
$ docker pull tomcat:7.0.57

# container起動
$ docker run -d --name tomcat-example -p 8080:8080 tomcat:7.0.57

# 起動確認
# INFO: Server startup と表示されればOK
$ docker logs -f tomcat-example

# jspファイルコピー
$ cd ~/apa_tom_tutorial/tomcat/src
$ docker cp sample1 tomcat-example:/usr/local/tomcat/webapps

$ exit
```

### ブラウザ確認
http://localhost:8080/sample1/loop.jsp   

http://localhost:8080/sample1/date.jsp   
にアクセス以下のように表示される
![](image/tomcat2.png)

### 以下参考
containerの停止&削除
```bash
# 停止
$ docker stop tomcat-example
tomcat-example

# 削除
$ docker rm tomcat-example
tomcat-example
```
