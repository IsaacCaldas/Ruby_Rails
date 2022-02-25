class WelcomeController < ApplicationController
  def index
    cookies[:course] = "Course of Ruby on Rails [COOKIE]"
    session[:course] = "Course of Ruby on Rails [SESSION]"
    @my_name = params[:name]
    @course = "Ruby on Rails"
  end
end

