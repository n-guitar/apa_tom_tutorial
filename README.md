# apa_tom_tutorial
apache webserverとapache tomcatを利用したアプリケーションのチュートリアル

# 環境
- 開発環境
```bash
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.14.5
BuildVersion:   18F132
```

# 開発環境構築

## OpenJDKインストール
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

## vscode JAVA拡張機能インストール
- 以下を追加   
https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack

- 設定
[⌘ + ,]  -> [javahomeで検索] -> [Java: Home]を設定を開き[settings.json]に以下追加
```json
"java.home": "/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home",
```

## 動作確認
- Sample.javaを作成し[F5]でデバッグ
```java
class Sample {
    public static void main(String[] args){
        System.out.println("Hello World!");
    }
}
```
- デバッグ結果
```bash
/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home/bin/java -agentlib:jdwp=transport=dt_socket,server=n,suspend=y,address=localhost:55070 -Dfile.encoding=UTF-8 -cp "/Users/01016655/Library/Application Support/Code/User/workspaceStorage/dd25367f5ac7e19231d300812e43046b/redhat.java/jdt_ws/apa_tom_tutorial_a29c36ad/bin" Sample 
Hello World!
```

開発環境構築は以上


# 以下参考
- JDKアンインストール
```bash
cd /Library/Java/JavaVirtualMachines/
sudo rm -rf amazon-corretto-8.jdk
```