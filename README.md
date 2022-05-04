# テーブル設計

## users テーブル

| Column                 | Type     | Options                   |
| ---------------------- | -------- | ------------------------- |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |
| nickname               | string   | null: false               |

### Association
 - has_many :pet_details
 - belongs_to :calender


## calenders テーブル
| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| title           | string     | null: false |
| context         | text       | null: false |
| start_time      | datetime   | null: false |

### Association
 - belongs_to :user
 - has_many :pet_details


## pet_informations テーブル
| Column         | Type      | Options     |
| -------------- | --------- | ----------- |
| name           | string    | null: false |
| sex_id         | integer   | null: false |
| kinds          | string    |
| color_id       | integer   | null: false |
| birthday       | date      | null: false |

### Association
 - has_one :pet_detail


## pet_details テーブル

| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| rice            | string     | null: false |
| medicine        | string     |
| vaccination_id  | integer    | null: false |
| weight          | integer    | null: false |
| motion_id       | integer    | null: false |
| snack           | string     |
| remarks         | text       |
| pet_information | references | null: false, foreign_key: true |

### Association
 - belongs_to :user
 - belongs_to :calender
 - belongs_to :pet_information
