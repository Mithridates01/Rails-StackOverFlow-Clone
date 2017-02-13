class User < ApplicationRecord
  has_secure_password

  has_many :comments, as: :commentable
  has_many :questions
  belongs_to :votable, polymorphic: true
  has_many :votes, as: :votable

end
