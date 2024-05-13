# data-platform-airport-sql 

data-platform-airport-sql は、データ連携基盤において、空港データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-airport-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-airport-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-airport-sql-header-data.sql（データ連携基盤 空港 - ヘッダデータ）
* data-platform-airport-sql-header-doc-data.sql（データ連携基盤 空港 - ヘッダ文書データ）
* data-platform-airport-sql-airway-data.sql（データ連携基盤 空港 - 空路データ）
* data-platform-airport-sql-partner-data.sql（データ連携基盤 空港 - パートナデータ）
* data-platform-airport-sql-address-data.sql（データ連携基盤 空港 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
