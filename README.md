# musicsearch-30464

## 概要


## URL
[musicsearch-30464](urlを入れる)

## テスト用アカウント


## 利用法


## 目指した課題解決

## 洗い出した要件

## 実装した機能についてのGIFと説明

## 実装予定の機能

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

- has_many :comments
- belongs_to :user

### comments

|Column        |Type     |Options                           |
|--------------|---------|----------------------------------|
| text         | string  | null:false                       |
| user_id      | references | foreign_key: true, null:false |
| music_id     | references | foreign_key: true, null:false |

- belongs_to :user
- belongs_to :music
## ローカルでの動作方法