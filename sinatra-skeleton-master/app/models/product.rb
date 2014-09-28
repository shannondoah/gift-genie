class Product < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_many :favourites

  # validates :name, presence: true, length: { maximum: 40 }
  # validates :description, presence: true, length: { maximum: 140 }
end