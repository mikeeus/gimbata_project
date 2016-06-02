class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Make confirmable?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :company
  validates_attachment :file,
      styles: { thumb: "100x100#", small: "150x150#"},
      content_type: { content_type: [
        "image/jpg", "image/jpeg", "image/png", "image/gif"]},
      message: "Sorry, only Images png, gif, jpeg or png."

  enum role: [:standard, :reporting, :admin]
end
