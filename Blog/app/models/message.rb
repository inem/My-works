class Message < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :users, through: :comments
  has_many :comentators, through: :comments, source: :user
end
