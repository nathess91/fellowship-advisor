class Post < ApplicationRecord
  has_one :user, through: :post_users
  belongs_to :city
end
