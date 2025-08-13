# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Entry.create!(
  user_id: 1,
  name: 'Github',
  url: 'https://github.com',
  username: 'githubUsername',
  password: 'GithubPassword123'
)

Entry.create!(
  user_id: 1,
  name: 'Udemy',
  url: 'https://udemy.com',
  username: 'udemyUsername',
  password: 'udemyPassword123'
)

Entry.create!(
  user_id: 1,
  name: 'Facebook',
  url: 'https://facebook.com',
  username: 'facebookUsername',
  password: 'facebookPassword123'
)

Entry.create!(
  user_id: 1,
  name: 'Instagram',
  url: 'https://instagram.com',
  username: 'instagramUsername',
  password: 'instagramPassword123'
)

Entry.create!(
  user_id: 1,
  name: 'X',
  url: 'https://x.com',
  username: 'xUsername',
  password: 'xPassword123'
)

Entry.create!(
  user_id: 1,
  name: 'AMD',
  url: 'https://amd.com',
  username: 'amdUsername',
  password: 'amdPassword123'
)
