class Observation < ApplicationRecord
  belongs_to :observer, class_name: 'User'
  belongs_to :observable, polymorphic: true
  has_many :comments, as: :commentable
  validates :observer_id, :observable_id, :observable_type, :body, presence: true 
end
