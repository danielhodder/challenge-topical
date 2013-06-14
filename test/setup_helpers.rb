module SetupHelpers
  def create_topic(args={})
    Topic.create!(name: args[:name] || generate(:topic_name),
                  created_by_user: args[:created_by_user] || create_user(),
                  content: args[:content] || Faker::Lorem.paragraph)
  end

  def create_user(args={})
    User.create(username: args[:username] || generate(:username),
                password: 'password', # All test users have the same password for ease of testing
                password_confirmation: 'password')
  end
end