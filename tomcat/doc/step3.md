## apache tomcat
step2のソースをwarファイルに纏めてdocker上に配置する

### warファイル作成
```bash
$ cd ~/apa_tom_tutorial/tomcat/src/sample2

$ jar cvf sample2.war *
マニフェストが追加されました
WEB-INF/を追加中です(入=0)(出=0)(0%格納されました)
WEB-INF/classes/を追加中です(入=0)(出=0)(0%格納されました)
WEB-INF/lib/を追加中です(入=0)(出=0)(0%格納されました)
WEB-INF/web.xmlを追加中です(入=343)(出=216)(37%収縮されました)
date.jspを追加中です(入=411)(出=283)(31%収縮されました)
loop.jspを追加中です(入=290)(出=204)(29%収縮されました)

$ ls
WEB-INF     date.jsp    loop.jsp    sample2.war
```

### tomcat container起動
```bash
# image pull
$ docker pull tomcat:7.0.57

# container起動
$ docker run -d --name tomcat-example -p 8080:8080 tomcat:7.0.57

# 起動確認
# INFO: Server startup と表示されればOK
$ docker logs -f tomcat-example

# warファイルコピー
$ cd ~/apa_tom_tutorial/tomcat/src
$ docker cp sample2.war tomcat-example:/usr/local/tomcat/webapps

$ exit
```

### ブラウザ確認
http://localhost:8080/sample2/loop.jsp
http://localhost:8080/sample2/date.jsp   
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
