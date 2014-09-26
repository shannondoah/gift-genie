class User < ActiveRecord::Base
  has_many :favourites

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end