class Folder < ActiveRecord::Base
  belongs_to :project
  belongs_to :company
  has_attached_file :document
end
