# テーブル設計

## users テーブル

| Column             | Type   | Options      |
| ------------------ | ------ | -----------  |
| nickname           | string | null: false  |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false  |
| family_name        | string | null: false  |
| first_name         | string | null: false  |
| family_name_kana   | string | null: false  |
| first_name_kana    | string | null: false  |
| birth_day          | date   | null: false  |


### Association

- has_many :items
- has_many :purchase

## items テーブル

| Column                 | Type   | Options     |
| ------------------     | ------ | ----------- |
| name                   | string | null: false |
| price                  | integer | null: false |
| text                   | text | null: false |
| category_id               | integer | null: false |
| shipping_charge_id       | integer | null: false |
| condition_id          | integer | null: false |
| prefecture_id         | integer | null: false |
| days_to_ship_id           | integer | null: false |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase

## destinations テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| post_code          | string | null: false |
| prefecture_id      | integer | null: false |
| municipality       | string | null: false |
| address            | string | null: false |
| building_name      | string |
| phone_number       | string | null: false |
| purchase           | references | null: false, foreign_key: true |

### Association

- belongs_to :purchase


## purchase テーブル

| Column             | Type      | Options     |
| ------------------ | --------- | ----------- |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- has_one :destination
- belongs_to :item
- belongs_to :user