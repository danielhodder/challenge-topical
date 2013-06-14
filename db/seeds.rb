# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  2.times do |index|
    User.create!(username: "User #{index}", password: 'password', password_confirmation: 'password')
  end

  10.times do |index|
    Topic.create!(name: "Topic #{index}", content: 'Faker::Lorem.paragraph', created_by_user: User.all.sample)
  end
end