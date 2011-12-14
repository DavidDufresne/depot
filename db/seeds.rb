# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#...
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
      Ruby is the fastest growing and bestest dynamic language in the whole damn world. Lol. </p>},
      image_url: 'pickaxe.jpg',
      price: 49.95)
Product.create(title: 'Delorean',
  description:
    %{<p>
      Metal car with gull-wing doors.  "That's the power of love."
    </p>},
      image_url: 'delorean.jpg',
      price: 499.95)

