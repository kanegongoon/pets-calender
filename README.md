# テーブル設計

## users テーブル

| Column                 | Type     | Options                   |
| ---------------------- | -------- | ------------------------- |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |
| nickname               | string   | null: false               |

### Association
 - has_many :pet_details
 - belongs_to :calendar


## calendars テーブル
| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| title           | string     | null: false |
| content         | text       | null: false |
| start_time      | date       | null: false |

### Association
 - belongs_to :user
 - has_many :pet_informations
 - has_many :pet_details


## pet_informations テーブル
| Column         | Type      | Options     |
| -------------- | --------- | ----------- |
| name           | string    | null: false |
| sex            | string    | null: false |
| kinds          | string    |
| color          | string    | null: false |
| birthday       | date      | null: false |


### Association
 - belongs_to :calender
 - has_one :pet_detail



## pet_details テーブル

| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| rice            | string     | null: false |
| medicine        | string     |
| vaccination     | string     | null: false |
| weight          | integer    | null: false |
| motion          | string     | null: false |
| snack           | string     |
| remarks         | text       |
| pet_information | references | null: false, foreign_key: true |

### Association
 - belongs_to :user
 - belongs_to :calendar
 - belongs_to :pet_information
