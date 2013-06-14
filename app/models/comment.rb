class Comment < ActiveRecord::Base
  belongs_to :topic, inverse_of: :comments, touch: true
  belongs_to :created_by_user, class_name: 'User', inverse_of: :comments

  validates :topic, presence: true
  validates :created_by_user, presence: true
  validates :comment, presence: true
end