# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing Seed Data'
User.destroy_all
Stat.destroy_all
# puts 'Creating Users'
# User.create(username: "Matt Doering", password_digest: 1234)
# User.create(username: "Tony Lum", password_digest: 1234)
# User.create(username: "Joyce Kwon", password_digest: 1234)
puts 'Creating Stats'
Stat.create(high_score: 200, line_clear: 60, initials: "MD!")
Stat.create(high_score: 100, line_clear: 25, initials: "TL!")
Stat.create(high_score: 100, line_clear: 30, initials: "JK!")
