module ApplicationHelper
  
  # Admin protections
  def admin_user?
    current_user.role == "admin" ? true : false
  end

  def redirect_unless_admin_user
    redirect_to(root_url) unless current_user.role == "admin"
  end

  # Company down instance variables
  def current_company
    if user_signed_in?
      @company = current_user.company
      @folders = @company.folders
      if current_user.admin?
        @users = @company.users
      end
    end
  end

  # VIEWS  
  def disable_sidebar
    @disable_sidebar = true
  end

  # Formating
  def prettify(amount)
    number_to_currency(amount, unit: "", separator: ".", delimiter: ",", significant: false)
  end
  
  def full_title(page_title = '')
    base_title = "mesabya"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
