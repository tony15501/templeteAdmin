class HomeController < ApplicationController
  def index
  	@homes = Home.all
  	@projects = Project.order("id DESC").limit(2)
  			
  end
end
