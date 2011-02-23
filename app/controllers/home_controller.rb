class HomeController < ApplicationController
  def index
    if logged_in?
      render :index
    else
      render :landing
    end
  end
end
