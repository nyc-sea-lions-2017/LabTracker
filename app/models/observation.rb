class Observation < ApplicationRecord
  belongs_to :observer, class_name: 'User'
  belongs_to :observable, polymorphic: true
  has_many :comments, as: :commentable
end
