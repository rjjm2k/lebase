namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_admins
  end
end

def make_admins
  admin = User.create!(name:     "Admin1",
                       email:    "admin1@uniphobia.com",
                       password: "passwort",
                       password_confirmation: "passwort")
  admin.toggle!(:admin)

  admin = User.create!(name:     "Admin2",
                       email:    "admin2@uniphobia.com",
                       password: "passwort",
                       password_confirmation: "passwort")
  admin.toggle!(:admin)
end