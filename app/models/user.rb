class User < ApplicationRecord
  has_many :followers, class_name: 'Friendship', foreign_key: :follower_id
  has_many :followed, through: :followers

  has_many :followed, class_name: 'Friendship', foreign_key: :followed_id
  has_many :followers, through: :followed
end
