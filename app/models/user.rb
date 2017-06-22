class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :proposals
  has_many :experiments
  has_many :comments
  has_many :observations
  has_many :commented_proposals, through: :comments, source: :proposal
  has_many :commented_experiments, through: :comments, source: :experiment
  has_many :commented_observations, through: :comments, source: :observation
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
