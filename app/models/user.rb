class User < ApplicationRecord
  validates :name, length: { maximum: 20 }, presence: true
  validates :email, presence:true

  has_secure_password
end
