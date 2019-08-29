概要
====

AWS上でELF Open Goのパラメータを使用しLizzieを実行する。

参考：https://aws-guide.memo.wiki/ (*1)

## 手順

1. Lizzie等ツール類ダウンロード
    1.Clone or download
    2.Download ZIPして開く
    3.全て展開
    4.フォルダ名を『Leela-Zero-with-AWS-master』から『AWS』に変更する（以降『AWS』フォルダと表記）
    5.デスクトップに移動する
2. AWSアカウント作成～鍵取得
    1.Amazon Web Service (AWS) のユーザー登録(*1)
    2.AWSでインスタンスを立ち上げる
        1.セキュリティグループの設定(*1)
        2.キーペアの作成(*1)　このとき作成するキーペアを『AWS』フォルダに保存する
        3.PuTTYのインストール 
        4.ppkの作成 このとき作成するppkを『AWS』フォルダに保存する
3. ELF Open Goのパラメータ取得
    1.https://zero.sjeng.org/ を開く
    2.ページを少し下にスクロールし、Best Network Hashテーブル最上部（最新）のHashを『AWS』フォルダにダウンロード
    3.『謎の数文字列.gz』から『network.gz』に変更する
4. スポットインスタンスリクエスト
    1.スポットインスタンスの立ち上げ(*1)
    2.インスタンスでメモしたIPv4パブリックIP を『AWS』フォルダ内のssh.batファイルの#ip_address#に入力
    3.同じくssh.batファイルの#User#にあなたのPCのユーザネームを入力
5. 実行
