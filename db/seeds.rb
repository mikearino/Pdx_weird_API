# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_things
  end

  def generate_things
    5.times do |i|
      thing = thing.create!(
        name: Faker::Book.author,
        content: Faker::Movie.quote,
        rating: Faker::Number,
        tag: Faker::Book.author
      )
      puts "thing #{i}: Author is #{thing.author} and quotation is '#{thing.content}'."
    end
  end
end

Seed.begin
