class Post < ActiveRecord
  belongs_to :user
  has_many :comments
end