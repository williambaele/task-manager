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
status = ["process","finished"]
start_date = ["2022-10-10","2022-10-11","2022-10-12","2022-10-13"]
40.times do
  task = Task.create!(title: title.sample, content: Faker::Lorem.sentence(word_count: 300),start_date: start_date.sample, end_date: "2022-12-30", difficulty: rand(1..10), user_id: "16", status: status.sample)
  puts task.title
end
