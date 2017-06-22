class Proposal < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_one :experiment
  # has_one :experimenter, through: :experiment
  validates :title, :summary, :hypothesis, :status, :user, presence: true
end
