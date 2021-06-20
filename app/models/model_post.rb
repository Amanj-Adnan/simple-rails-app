class ModelPost < ApplicationRecord
  belongs_to :model

  delegate :email,to: :model
end
