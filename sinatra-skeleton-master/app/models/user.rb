class User < ActiveRecord::Base
  has_many :favourites
end