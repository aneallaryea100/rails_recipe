class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :recipefoods, through: :recipes
  has_many :recipefoods, through: :foods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: false }
end
