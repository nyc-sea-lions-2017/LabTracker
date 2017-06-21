class Proposal < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  validates :title, :summary, :hypothesis, :status, :user, presence: true
end
