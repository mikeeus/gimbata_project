class Company < ActiveRecord::Base
  has_many :users
  has_many :projects
  has_many :folders
  has_many :documents, through: :folders
end
