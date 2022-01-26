# README

# テーブル設計

## users テーブル (仮)

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| manager            | string | null: false               |

### Association

- has_many :teams

## teams テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| team_name          | string | null: false, unique: true |

### Association

- has_many :members

## members テーブル

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| name                     | string     | null: false                    |
| birthday                 | date       | null: false                    |
| phone_number             | string     | null: false                    |
| gender_id                | integer    | null: false                    |
| technical_grade_id       | integer    | null: false                    |
| referee_grade_id         | integer    | null: false                    |
| referee_deadline         | date       | null: false                    |
| c_id             | integer    | null: false                    |
| team                     | references | null: false, foreign_key: true |

### Association

- belongs_to :team
