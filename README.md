# アプリケーション名

Team's

# アプリケーション概要

テニステームのメンバー管理アプリです。
メンバーの資格や連盟への登録内容を登録・確認ができます。

# URL

https://teams-37298.herokuapp.com/

# テスト用アカウント

Eメール：sample@com
パスワード：123456

# 利用方法

・トップページのヘッダーより新規登録  
・画面右上のチーム登録より、チームを登録  
・登録されたチーム名の右側にあるアイコンより、以下４つの操作が可能  
  ①チーム名変更  
  ②チーム削除  
  ③メンバー登録 : 名前のみ必須  
  ④メンバー一覧  

# アプリケーションを作成した背景

私自身がテニスのチームに所属しており、友人がチームの管理をしています。  
現状は、PCからエクセルにて管理している状況で、練習参加時などPCを持参しているわけではないので、確認したいときに確認できない環境のため、メンバー管理を手軽にできればという思いから作成しました。

# 洗い出した用件

https://docs.google.com/spreadsheets/d/1Ydj60GB3Yml1lJcPOs4SKfnPOY7r5TiZtPILY-xUiRc/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明

・ログイン機能  
[![Image from Gyazo](https://i.gyazo.com/b4fc602ee80d3520e1fc9b42925877e9.gif)](https://gyazo.com/b4fc602ee80d3520e1fc9b42925877e9)  
  
・チーム登録機能  
[![Image from Gyazo](https://i.gyazo.com/35ea29b07d62e90037702584bda4e18e.gif)](https://gyazo.com/35ea29b07d62e90037702584bda4e18e)

・チーム名変更機能  
[![Image from Gyazo](https://i.gyazo.com/a3179d6b9392d25d9b116f2f59fdf902.gif)](https://gyazo.com/a3179d6b9392d25d9b116f2f59fdf902)

・チーム削除機能  
[![Image from Gyazo](https://i.gyazo.com/01a7d2b9226c211bd90aaddc8048896f.gif)](https://gyazo.com/01a7d2b9226c211bd90aaddc8048896f)


・メンバー登録機能  
[![Image from Gyazo](https://i.gyazo.com/4ccca0d4f6ce578db2b9a09be331e079.gif)](https://gyazo.com/4ccca0d4f6ce578db2b9a09be331e079)

・メンバー変更機能  
[![Image from Gyazo](https://i.gyazo.com/aa5c1dab8e979824b9cf9710e924d9ae.gif)](https://gyazo.com/aa5c1dab8e979824b9cf9710e924d9ae)

・メンバー削除機能  
[![Image from Gyazo](https://i.gyazo.com/11a4c0975d873b1a6c206faa0dd2f48f.gif)](https://gyazo.com/11a4c0975d873b1a6c206faa0dd2f48f)



# データベース設計

[![Image from Gyazo](https://i.gyazo.com/33e83d792f6ec9b16b77f1e66efd5a38.png)](https://gyazo.com/33e83d792f6ec9b16b77f1e66efd5a38)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/22ade9cde5e2d8b6e67b14f43261ad4e.png)](https://gyazo.com/22ade9cde5e2d8b6e67b14f43261ad4e)

# 開発環境

Ruby on Rails  
HTML・CSS  
Bootstrap  
Visual Studio Code  

# 工夫したポイント

・メンバー一覧やメンバー詳細の年齢表示について  
生年月日から現在の年齢が出るようにした点です。  
試合は年齢で部が分かれていることが多いので、一目で年齢がわかると便利さがますと思い、追加しました。
