class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def homepage
    if user_signed_in?

    end
  end
end
