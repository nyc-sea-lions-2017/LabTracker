class Comment < ApplicationRecord
  belongs_to :commenter, class_name: 'User'
  belongs_to :commentable, polymorphic: true
  validates :commenter_id, :commentable_type, :commenter_id, :body
end
