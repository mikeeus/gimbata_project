# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create!(
  name: "Trust Construction",
  phone_number: "123-456-7890",
  address: "123 Fake Street",
  city: "Addis Ababa",
  country: "Ethiopia",
  description: "A construction company"
)

User.create!(
  company_id: 1,
  first_name: "Mikias",
  last_name: "Abera",
  position: "Office Manager",
  role: 2,
  email: "mikias@gimbata.com",
  password: "password",
  password_confirmation: "password"
)

User.create!(
  company_id: 1,
  first_name: "Samius",
  last_name: "Abera",
  position: "Office Manager",
  role: 1,
  email: "samius@gimbata.com",
  password: "password",
  password_confirmation: "password"
)

User.create!(
  company_id: 1,
  first_name: "Spiers",
  last_name: "Damazing",
  position: "Office Manager",
  role: 0,
  email: "spiers@gimbata.com",
  password: "password",
  password_confirmation: "password"
)

Folder.create!(
  company_id: 1,
  name: "40/60 Condominiums"
)

Folder.create!(
  company_id: 1,
  name: "Dedhessa Primary Hospital"
)

Folder.create!(
  company_id: 1,
  name: "Wogeda Primary Hospital"
)

Folder.create!(
  company_id: 1,
  name: "Dessie UCBP"
)