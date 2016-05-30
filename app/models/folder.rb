class Folder < ActiveRecord::Base
  belongs_to :company
  has_many :documents, dependent: :destroy

end
