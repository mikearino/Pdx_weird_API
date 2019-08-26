class User < ApplicationRecord
  has_many :comments
  has_many :favorite_things
  has_many :things, :through => :favorite_things
end
