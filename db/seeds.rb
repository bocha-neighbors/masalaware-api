# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

room_list = ["Bathroom", "Kitchen", "Bedroom", "Garage", "Boiler Room"]

5.times do |i|
  Request.create(urgency_scale: i, location: "#{room_list[i]}", category: "Plumbing", description: "It's broken", actions_attempted: "I tried to fix it")
end 
