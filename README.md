## usersテーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |
| company    | string |             |

### Association
has_many :presentations
has_many :comments

## presentationsテーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| movie       | FFmpegを用いて実装     |
| title       | string | null: false |
| concept     | string | null: false |
| desctiption | text   | null: false |

### Association
belongs_to :user
has_many :comments

## commentsテーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| text         | text   | null: false |
| user         | string | null: false |
| presentation | string | null: false |

### Association
belongs_to :presentation
belongs_to :user