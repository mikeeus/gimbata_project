# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create!(
  name: "Trust Construction PLC",
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

Project.create!(
  company_id: 1,
  name: "40/60 Saving House Project",
  location: "Bole Bulebula",
  description: "40/60 subsidized housing project.",
  client: "Addis Ababa Housing Authority",
  consultant: "A&B Engineering Consultants"
)

Project.create!(
  company_id: 1,
  name: "Dehdessa Primary Hospital",
  location: "I/A Bora Zone",
  description: "Primary Hospital.",
  client: "Oromia Regional State Health Bureau",
  consultant: "A&B Engineering Consultants"
)

Folder.create!(
  company_id: 1,
  name: "Documents"
)