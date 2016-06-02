class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Make confirmable?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :company
  has_attached_file :avatar
  validates_attachment :avatar,
      styles: { thumb: "100x100#", small: "150x150#", medium: "300x300#"},
      content_type: { content_type: [
        "image/jpg", "image/jpeg", "image/png", "image/gif"]},
      message: "Sorry, only png, gif, jpeg or jpg."

  enum role: [:standard, :reporting, :admin]

  # For permissions, user should have attribute to hold folder ids that can be accessed
  # Maybe admins have a value of 0 for full access of folders?
end
