class Procedure < ApplicationRecord
  belongs_to :experiment
  has_many :observations, as: :observable
  validates :name, :experiment_id, presence: true 
end
