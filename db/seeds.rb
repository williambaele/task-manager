# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying data"
Task.destroy_all
title = ["Laundry", "Yoga", "Sport"]
40.times do
  task = Task.create!(title: title.sample, content: Faker::Lorem.sentence(word_count: 16))
  puts task.title
end
