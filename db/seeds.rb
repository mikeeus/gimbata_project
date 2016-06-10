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
  description: "A construction company",
  tin: "001122334455"
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
    first_name: "Meserete",
    last_name: "Melese",
    position: "Office Engineer",
    role: 0,
    email: "meserete.m@trustconstruction.com",
    password: "password",
    password_confirmation: "password"
  }
  ])

folders = Folder.create([
  { 
    company_id: 1,
    name: "General Files"
  },
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
  },
  { 
    company_id: 1,
    name: "Payment Receipts"
  }
  ])