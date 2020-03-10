# apa_tom_tutorial
apache webserverとapache tomcatを利用したアプリケーションのチュートリアル   
web,appserverはdocker環境を利用

## 環境
- 開発環境
```bash
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.14.5
BuildVersion:   18F132

$ docker -v
Docker version 19.03.5, build 633a0ea
```

## 開発環境構築
mac&vscode上での開発環境構築、helloworld表示まで
* [環境構築](環境構築/README.md)

## apache tomcat
docker上でtomcat公式のサンプルアプリ(sample.war)の表示まで
* [STEP1](tomcat/doc/step1.md)

docker上でJSPを動作させるまで   
* [STEP2](tomcat/doc/step2.md)

step2のソースをwarファイルに纏めてdocker上に配置するまで   
* [STEP3](tomcat/doc/step3.md)
