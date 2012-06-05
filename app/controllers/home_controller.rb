class HomeController < ApplicationController

  skip_before_filter :authorize, only: [:index, :terms_of_use, :privacy_policy, :about]

  def index
    @side_projects = SideProject.paginate page: params[:page], order: 'created_at desc', per_page: 5
    #@id = 125.to_i
    @side_project = SideProject.first
    #{ @comment = Comment.find(params[:id])}
    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @side_project }
      render :template => 'home/index.html.erb'
      #format.json { render json: @side_projects }
    #end



    #@featured_project = SideProject.first(1)
      #respond_to do |format|
        #render :template => 'home/index.html.erb'
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

  def endorse
  end
end
