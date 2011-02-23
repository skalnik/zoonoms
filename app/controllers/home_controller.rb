class HomeController < ApplicationController
  def index
    if user_signed_in?
      render :index
    else
      render :landing
    end
  end
end
