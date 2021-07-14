class Comment < ApplicationRecord
  belongs_to :model
  belongs_to :commentable, polymorphic: true

  has_many :comments, as: :commentable

  delegate :email , to: :model
end
