module ApplicationHelper
  
  def current_company
    if user_signed_in?
      @company = current_user.company
      @folders = @company.folders
      @users = @company.users
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
  
end
