# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding database..."

50.times do |i|
  User.find_or_create_by!(email: "user#{i + 1}@example.com") do |user|
    user.username = "user#{i + 1}"
    user.name = "Test User #{i + 1}"
    user.password = "password"
    user.password_confirmation = "password"
  end
end

puts "Seeded 50 users."
