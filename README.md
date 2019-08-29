概要
====

AWS上でELF Open Goのパラメータを使用しLizzieを実行する。

参考：https://aws-guide.memo.wiki/ (*1)

※末尾に(*1)がついている行に関しては上記URLを参照

# 手順

### ①Lizzie等ツール類ダウンロード

    1.Clone or download
    
    2.Download ZIPして開く
    
    3.全て展開
    
    4.フォルダ名を『Leela-Zero-with-AWS-master』から『AWS』に変更する（以降『AWS』フォルダと表記）
    
    5.デスクトップに『AWS』フォルダを移動する
    
### ②AWSアカウント作成～鍵取得

    1.『1.Amazon Web Service (AWS) のユーザー登録』(*1)
    
    2.『2.AWSでインスタンスを立ち上げる』
    
        ⅰ.『2-1.セキュリティグループの設定』(*1)
        
        ⅱ.『2-2.キーペアの作成』(*1) このとき作成するキーペアを『AWS』フォルダに保存する
        
        ⅲ.『3-2.PuTTYのインストール』(*1)
        
        ⅳ.『3-3.ppkの作成』(*1) このとき作成するppkを『AWS』フォルダに保存する
        
### ③ELF Open Goのパラメータ取得

    1.(https://zero.sjeng.org/) を開く
    
    2.ページを少し下にスクロールし、Best Network Hashテーブル最上部（最新）のHashを『AWS』フォルダにダウンロード
    
    3.『謎の数文字列.gz』から『network.gz』に変更する
  
### ④スポットインスタンスリクエスト

    1.『2-3.スポットインスタンスの立ち上げ』(*1)
    
    2.インスタンスでメモしたIPv4パブリックIP を『AWS』フォルダ内のssh.batファイルの#ip_address#に入力
    
    3.同じくssh.batファイルの#User#にあなたのPCのユーザネームを入力（確認方法は以下）
    
    Windowsキー+R ⇒ 「cmd」と入力 ⇒ C:\Users\"PCのユーザネーム">
    
### ⑤実行

    1.「AWS」フォルダ内のLizzie.jarを実行する
