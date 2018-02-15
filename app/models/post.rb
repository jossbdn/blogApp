class Post < ApplicationRecord
  has_many :comment
  belongs_to :user

  validates :title, presence: true
end
