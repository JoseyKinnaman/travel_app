class Comment < ApplicationRecord

  validates :author, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
end