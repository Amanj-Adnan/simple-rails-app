class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :model_posts
  has_many :likes, dependent: :destroy
  has_many :uploads
  has_many :comments
  validates :email, presence:  true
  validates :name, presence:  true , uniqueness: true
end
