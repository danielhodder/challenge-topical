class Topic < ActiveRecord::Base
  belongs_to :created_by_user, class_name: 'User', inverse_of: :topics

  has_many :comments, inverse_of: :topic

  validates :name, presence: true
  validates :content, presence: true
  validates :created_by_user, presence: true
end