class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipefoods, dependent: :destroy
  has_many :foods, through: :recipefoods

  validates :name, presence: true
end
