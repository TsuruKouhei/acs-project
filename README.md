# ドクターアグリ
![app_logo](corporate_logo2.webp)

## サービス概要
### [ドクターアグリ](http://agribot-test.site/)
農業専門のチャットボットアプリです

## 想定されるユーザー層
農業業界に新規参入してきた企業担当者
- 農業に関する質問をチャットボットに投げかけることができる
- 専門的な知識を持ったAIがリアルタイムに回答を提供

## サービスコンセプト

#### 【開発するに至った経緯】

#### 【ユーザーが抱える課題】

#### 【解決方法】

## 主な機能

## 使用技術
- ruby 3.0.1
- Rails 6.1.7.6

#### フロントエンド
- JavaScript
- Bootstrap

#### データベース
- PostgreSQL

#### gem
- deise(devise-i18n)
- shoulda-matchers
- rails-erd
- kaminari
- ransack

#### 外部webサービス
- [Chatsimple](https://www.chatsimple.ai/)

#### インフラ
- AWS EC2

#### 実行手順
```
$ git clone git@github.com:TsuruKouhei/acs-project.git
$ cd acs-project
$ bundle install
$ yarn install
$ rails db:create && rails db:migrate
$ rails s
```
## カタログ設計
https://docs.google.com/spreadsheets/d/1Pki6_pHy6GR1Kd1n-f0usFPvvEuaxC-C5C_Rdmya9Iw/edit#gid=1245264142
## テーブル定義書
https://docs.google.com/spreadsheets/d/1Pki6_pHy6GR1Kd1n-f0usFPvvEuaxC-C5C_Rdmya9Iw/edit#gid=1707745237
## ワイヤーフレーム
https://docs.google.com/presentation/d/1yG9UPbMk0O3kFZC_L9NEeEvXAlcJC97JlmFDlE0453w/edit?usp=sharing
## ER図
![ER図](images/ER_diagram.png)
