class Comment< ApplicationRecord
    belongs_to :posts, class_name: 'User'
    belongs_to :users
end