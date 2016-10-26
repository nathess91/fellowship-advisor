class Post < ApplicationRecord
  has_one :user, through: :post_users
  belongs_to :city
  has_many :comments

  validates :title , length: { in:1..200, too_long: "%{count} characters is the maximum allowed" }
  validates :content, :title, presence: true
end
