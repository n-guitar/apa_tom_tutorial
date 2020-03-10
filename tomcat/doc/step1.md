## apache tomcat
docker上でtomcat公式のサンプルアプリ(sample.war)の表示まで   

tomcat containerを起動し、container内からsample.warをダウンロードし配置する。


### tomcat container起動
```bash
# image pull
$ docker pull tomcat:7.0.57

# container起動
$ docker run -d --name tomcat-example -p 8080:8080 tomcat:7.0.57

# 起動確認
# INFO: Server startup と表示されればOK
$ docker logs -f tomcat-example

# sample.warファイルダウンロード
$ docker exec -it tomcat-example /bin/bash
root@8e9e8d5491b8:/usr/local/tomcat# cd /usr/local/tomcat/webapps
root@8e9e8d5491b8:/usr/local/tomcat/webapps# wget http://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
...
2020-03-10 02:57:26 (28.0 MB/s) - 'sample.war' saved [4606/4606]
root@8e9e8d5491b8:/usr/local/tomcat/webapps# exit
```

### ブラウザ確認
http://localhost:8080/sample   
にアクセス以下のように表示される
![](image/tomcat1.png)

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
