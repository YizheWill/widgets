class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :email, presence: true, length: {maximum: 255}
  validates :username, presence: true, length: {in: 5..20}
end
