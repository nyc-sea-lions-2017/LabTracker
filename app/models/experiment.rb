class Experiment < ApplicationRecord
  belongs_to :proposal
  has_one :experimenter, class_name: "User"
  has_one :procedure
  has_many :observations, as: :observable
  has_many :comments, as: :commentable
  validates :results, :proposal, :experiment_id, presence: true 

end
