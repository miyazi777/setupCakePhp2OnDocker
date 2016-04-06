# 概要
cakePHP2系を学習する為の環境をdockerでセットアップするプロジェクト。

構成は以下のとおり。

* apache 2.2.15
* php 5.5.3
* mysql 5.7.7
* cakePHP 2.8.3 (2.x系の最新版が入る予定)

## 前提
docker toolboxがインストールされていること。

## セットアップ手順
* このプロジェクトそのものをgit cloneする。
* ./setup.sh
* dockerのipアドレスをブラウザで確認するとcakephpの初期設定画面が表示される
* ./setup.shを叩いたフォルダにcakephpが作られる。ここにcakephpの最新バージョンがダウンロードされる
* ./あとはcakephp内でで足りない設定を追加していく(app/Config/core.phpなど)

### dbに関するセットアップについて
rootユーザーのidとパスワードはroot/mysql
dbのホスト名はdb

### dbの設定例(app/Config/database.php)
事前にmysqlにcake_dbデータベースを作成し、cake_userユーザーを作成する

* create database cake_db;
* grant all on cake_db.* to 'cake_user'@'%' identified by 'cake_pass';

```
class DATABASE_CONFIG {

	public $default = array(
		'datasource' => 'Database/Mysql',
		'persistent' => false,
		'host' => 'db',
		'login' => 'cake_user',
		'password' => 'cake_pass',
		'database' => 'cake_db',
		'prefix' => '',
		//'encoding' => 'utf8',
	);

}
```
