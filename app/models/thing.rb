class Thing < ApplicationRecord
  has_many :comments
  has_many :locations
  has_many :favorite_things
  has_many :users, :through => :favorite_things

  scope :three_recent, -> {order(created_at: :desc).limit(3)}

  scope :most_comments, -> {(
    select("things.id, things.name, things.rating, things.country_of_origin, count(comments.id) as comments_count")
    .joins(:comments)
    .group("things.id")
    .order("comments_count DESC")
    .limit(1)
    )}

  scope :random, -> {order("RANDOM()").limit(1)}

  end
