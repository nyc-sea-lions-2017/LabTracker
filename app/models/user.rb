class User < ApplicationRecord
  has_many :proposals
  has_many :experiments
  validates :username, :email, presence: true, uniqueness: true
  validates :password, presence: true 
  has_secure_password
end
