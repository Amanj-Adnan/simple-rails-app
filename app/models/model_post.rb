class ModelPost < ApplicationRecord
  belongs_to :model
  has_many :likes, dependent: :destroy

  delegate :email,to: :model
end
