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

users = User.create!([
  { 
    company_id: 1,
    first_name: "Melkam",
    last_name: "Abera",
    position: "Administrator",
    role: 1,
    email: "melkam@trustconstruction.com",
    password: "password",
    password_confirmation: "password"
  },
  { 
    company_id: 1,
    first_name: "Samius",
    last_name: "Abera",
    position: "Project Manager",
    role: 0,
    email: "samius@trustconstruction.com",
    password: "password",
    password_confirmation: "password"
  },
  { 
    company_id: 1,
    first_name: "Mikias",
    last_name: "Abera",
    position: "Office Manager",
    role: 0,
    email: "mikias@trustconstruction.com",
    password: "password",
    password_confirmation: "password"
  },
  { 
    company_id: 1,
    first_name: "Baby",
    last_name: "Getaneh",
    position: "Tender Analyst",
    role: 0,
    email: "mikias@trustconstruction.com",
    password: "password",
    password_confirmation: "password"
  }
  ])

folders = Folder.create([
  { 
    company_id: 1,
    name: "Company Profile"
  },
  { 
    company_id: 1,
    name: "Professional Licenses"
  },
  { 
    company_id: 1,
    name: "Tender Files"
  },
  { 
    company_id: 1,
    name: "Current Tenders"
  },
  { 
    company_id: 1,
    name: "Past Tenders"
  }
  ])