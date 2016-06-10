class Folder < ActiveRecord::Base
  belongs_to :company
  has_many :permissions
  has_many :documents, dependent: :destroy

  def can_be_accessed_by?(user)
    if user.admin?
      true
    else
      self.permissions.find_by_user_id(user)
    end
  end

end
