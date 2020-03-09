# apa_tom_-tutorial
apache webserverとapache tomcatを利用したアプリケーションのチュートリアル

# 環境
- 開発環境
```bash
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.14.5
BuildVersion:   18F132
```

# OpenJDKインストール
- 以下を利用Amazon Corretto 8を利用
https://docs.aws.amazon.com/ja_jp/corretto/latest/corretto-8-ug/macos-install.html

- インストール後
```bash
$ /usr/libexec/java_home --verbose
Matching Java Virtual Machines (1):
    1.8.0_242, x86_64:	"Amazon Corretto 8"	/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

$ export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
```

# vscode JAVA拡張機能インストール
- 以下を追加
https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack

- 設定
[⌘ + ,]  -> [javahomeで検索] -> [Java: Home]を設定





# 以下参考
- JDKアンインストール
```bash
cd /Library/Java/JavaVirtualMachines/
sudo rm -rf amazon-corretto-8.jdk
```