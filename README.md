# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e_mail|string|null: false,　unique: true|
|passward|string|null: false|

### Association
- has_many :tweets
- has_many :comments
- has_many :messages
- has_many :groups. through: :groups_users
- has_many :groups_users

## tweetsテーブル
Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentテーブル
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messages
- has_many :users. thougth: :groups_users
- has_many :groups_users

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|message||text|
|image||string|
|user_id|integer|null: false, foreign_key: true, unique: true|
|group_id|integer|null: false, foreign_key: true, unique: true|

### Association
- belongs_to :user
- belongs_to :group

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true, unique: true|
|group_id|integer|null: false, foreign_key: true, unique: true|

### Association
- belongs_to :group
- belongs_to :user


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
