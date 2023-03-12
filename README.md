# テーブル設計

## users テーブル

| Column             | Type   | Options      |
| ------------------ | ------ | -----------  |
| nickname           | string | null: false  |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false  |


### Association

- has_many :items
- has_many :taker

## items テーブル

| Column                 | Type   | Options     |
| ------------------     | ------ | ----------- |
| name                   | string | null: false |
| text                   | text | null: false |
| condition_id           | integer | null: false |
| receive_id             | integer | null: false |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :taker

## destinations テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| post_code          | string | null: false |
| prefecture_id      | integer | null: false |
| municipality       | string | null: false |
| address            | string | null: false |
| building_name      | string |
| phone_number       | string | null: false |
| receip_day_id      | integer | null: false |
| receive_id         | integer | null: false |
| takert             | references | null: false, foreign_key: true |

### Association

- belongs_to :taker


## takers テーブル

| Column             | Type      | Options     |
| ------------------ | --------- | ----------- |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- has_one :destination
- belongs_to :item
- belongs_to :user
