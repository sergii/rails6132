class User < ApplicationRecord
  belongs_to :referrer, class_name: 'User', optional: true
end
