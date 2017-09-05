# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create(title: "Watch Keeeping Up with the Kardashians", description: "Start realizing things")
Task.create(title: "Shopping", description: "Realize things", deadline: Date.new(2016, 11, 24))
Task.create(title: "Call mom", description: "Talk about stuff")
Task.create(title: "Dog", description: "Go for a walk with the dog.", deadline: Date.new(2016, 11, 23))
