puts "Seeding database..."

50.times do |i|
  User.find_or_create_by!(email: "user#{i + 1}@example.com") do |user|
    user.username = "user#{i + 1}"
    user.password = "password"
    user.password_confirmation = "password"
  end
end

User.find_or_create_by!(email: "qwerty@example.com") do |user|
  user.username = "qwerty"
  user.password = "password"
  user.password_confirmation = "password"
end

puts "Seeded #{User.count} users."
