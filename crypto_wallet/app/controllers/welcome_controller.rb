class WelcomeController < ApplicationController
  def index
    @my_name = params[:name]
    @course = "Ruby on Rails"
  end
end
