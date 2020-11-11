# musicsearch-30464

## 概要
  条件に合った音楽検索

## URL
[musicsearch-30464](https://musicsearch-30464.herokuapp.com/)

## テスト用アカウント
  - email address: aaa@gmail.com
  - password: 111111a

## 利用法
  - 自分の思っている事をテキストボックスに記入し音楽を検索
  - 選択肢から今の気分を選択し音楽を検索

## 目指した課題解決
  - 今の自分の聞いている音楽に少し飽きていてもっと色んなジャンルの音楽を知りたいと思っている
  - 最近落ち込む事が多い人の為に気持ちを整理して気持ちの切り替えがしたいと思っている

## 洗い出した要件
  - 新規登録機能の実装
  - ログイン・ログアウト機能の実装
  - トップページの表示
  - テキスト入力検索
  - 選択入力検索
  - 動画再生ページ
  - マイページ
  - おすすめコメント機能

## 実装した機能についてのGIFと説明
  - 新規登録機能の実装
  - ログイン・ログアウト機能の実装
  - トップページの表示


## 実装予定の機能
  - テキスト入力検索
  - 選択入力検索
  - 動画再生ページ
  - マイページ
  - おすすめコメント機能



## データベース設計

### users

|Column              |Type     |Options                |
|--------------------|---------|-----------------------|
| nickname           | string  | null:false            |
| password           | string  | null:false            |
| email              | string  | null:false            |

- has_many :musics
- has_many :comments

### musics

|Column              |Type     |Options           |
|-----------------|---------|---------------------|
| image           | text    | null:false          |??
| url             | string  | null:false          |
| comment         | text    | null:false          |

- has_one :comments
- belongs_to :user

### recommends

|Column        |Type     |Options                           |
|--------------|---------|----------------------------------|
| text         | string  | null:false                       |
| user_id      | references | foreign_key: true, null:false |
| music_id     | references | foreign_key: true, null:false |

- belongs_to :user
- belongs_to :music

## ローカルでの動作方法

- https://github.com/sumi04239/musicsearch-30464.git
- cd musicsearch30464
- database.yml の中のencodingを「utf8」に変更
- gem 'mysql2', '>= 0.5.3' に変更
- bundle install
- yarn install
- 以下を「Gemfile」に追加
  - gem 'devise'
  - gem 'pry-rails'
  - gem 'mini_magick'
    gem 'image_processing', '~>1.2'
  - gem 'active_hash'
  - gem 'jquery-rails'
  - group :production do
    gem 'rails_12factor'
  end
  - group :development do
    gem 'rubocop', require: false
  end
  - group :development, :test doのしたに記述
    - gem 'rspec-rails', '~> 4.0.0'
    - gem 'factory_bot_rails'
    - gem 'faker'
- bundle install
- rails db:create
- rails db:migrate
- rails s