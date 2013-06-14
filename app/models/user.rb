class User < ActiveRecord::Base
  has_secure_password

  has_many :topics, inverse_of: :created_by_user
  has_many :comments, inverse_of: :created_by_user

  validates :username, presence: true
  # Password presence validation is provided by ActiveModel::SecurePassword
end