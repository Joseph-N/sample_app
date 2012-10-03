namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Joseph Ndungu",
                 email: "jojoartz98@gmail.com",
                 password: "Jose4114",
                 password_confirmation: "Jose4114")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
  
   task populate: :environment do
   admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar")
   admin.toggle!(:admin)
  end
end
