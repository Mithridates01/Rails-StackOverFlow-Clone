class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :answerers, through: :answers, source: :user

  validates :title, presence: true
  validates :text, presence: true
end
