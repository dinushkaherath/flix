class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  has_secure_password

  validates :name, presence: true

  validates :email, uniqueness: { case_sensitive: false }, format: { with: /\S+@\S+/ }
  
end
