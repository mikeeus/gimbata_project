module ApplicationHelper
  
  def current_company
    if user_signed_in?
      @company = current_user.company
    end
  end

  # VIEWS  
  def disable_sidebar
    @disable_sidebar = true
  end
end
