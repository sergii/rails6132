class User < ApplicationRecord
  has_many :referrals, class_name: 'User', foreign_key: 'referrer_id'
  belongs_to :referrer, class_name: 'User', optional: true
end
