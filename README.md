# musicsearch-30464

## 概要
  条件に合った音楽検索

  ｀こちらは重要な部分のtext分析のAPIと、音楽検索のAPIの実装が未実装なため、一度学習し直し実装予定です。｀

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
  - おすすめコメント機能の実装

## 実装した機能についてのGIFと説明
  - 新規登録機能の実装
  - ログイン・ログアウト機能の実装
  - トップページの表示
    [![Image from Gyazo](https://i.gyazo.com/873e42edb7a31165419df27d90bed9da.jpg)](https://gyazo.com/873e42edb7a31165419df27d90bed9da)


## 実装予定の機能
  - テキスト入力検索
    テキストに文字を入力し、そこから出たアベレージの数字をもとに
    音楽を検索して画面に遷移するようにする予定です。

    [![Image from Gyazo](https://i.gyazo.com/125c83a0d992df59c9b23e1419760296.jpg)](https://gyazo.com/125c83a0d992df59c9b23e1419760296)

  - 選択入力検索
  
    こちらは選択して行った物で絞り込むことにより、
    音楽を検索して遷移するようにする予定です。
    
    [![Image from Gyazo](https://i.gyazo.com/d5b567172d792ef9956408d4c54a5a65.jpg)](https://gyazo.com/d5b567172d792ef9956408d4c54a5a65)
    
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
- has_many :selects

### musics

|Column  |Type       |Options                         |
|--------|-----------|--------------------------------|
| user_id| references| null:false, foreign_key: true  |
| text   | string    | null:false                     |

- belongs_to :user

### selects

|Column      |Type        |Options|
|------------|------------|-------|
| user_id    | references |null: false, foreign_key: true |
| feeling_id | integer    | null: false |
| busy_id    | null: false|
| weather_id | integer    | null: false | 
| todo_id    | integer    | null: false |

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

1. https://github.com/sumi04239/musicsearch-30464.git
2. cd musicsearch30464
3. database.yml の中のencodingを「utf8」に変更
4. gem 'mysql2', '>= 0.5.3' に変更
5. bundle install
6. yarn install
7. 以下を「Gemfile」に追加
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
8. bundle install
9. rails db:create
10. rails db:migrate
11. rails s
