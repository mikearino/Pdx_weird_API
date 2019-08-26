class Thing < ApplicationRecord
  has_many :comments
  has_many :locations
  has_many :favorite_things
  has_many :users, :through => :favorite_things
end
