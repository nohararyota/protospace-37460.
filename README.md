| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| name               | string              | null: false               |
| position           | text                | null: false               |
| occupation         | text                | null: false               |
| profile            | text                | null: false               |



* has_many :prototypes
* has_many :comments


| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| title                               | string     | null: false                    |
| catch_copy                          | text       | null: false                    |
| concept                             | text       | null: false                    |
| user                                | references | null: false, foreign_key: true |


- belongs_to :user
- has_many :comments


| Column       | Type       | Options                        |
|------------- |------------|--------------------------------|
| content      | text       | null: false                    |
| prototype    | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |


- belongs_to :prototype
- belongs_to :user