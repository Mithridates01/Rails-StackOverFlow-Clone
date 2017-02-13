class Question < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  belongs_to :votable, polymorphic: true
  has_many :votes, as: :votable

end
