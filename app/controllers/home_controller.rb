class HomeController < ApplicationController

  skip_before_filter :authorize

  def index
    @side_projects = SideProject.first(10)


    #respond_to do |format|
      render :template => 'home/index.html.erb'
      #format.json { render json: @side_projects }
    #end
  end

  def about
  end

  def terms_of_use
  end

  def privacy_policy
  end

  def side_project
  end
end
