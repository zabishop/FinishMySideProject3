class AdminController < ApplicationController
  def index
    @last_project = SideProject.last
    @last_comment = Comment.last
    @last_user = User.last
    @total_projects = SideProject.count
    @total_comments = Comment.count
    @total_users = User.count
    #@total_sessions = Session.count
    @user = User.find_by_id(session[:user_id])
  end
end
