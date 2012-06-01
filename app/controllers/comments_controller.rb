class CommentsController < ApplicationController

  skip_before_filter :authorize

  def create
    @side_project = SideProject.find(params[:side_project_id])
    @commenter = Session.find(session[:user_id])
    @comment = @side_project.comments.create(params[:comment])

    redirect_to side_project_path(@side_project)
  end

  def destroy
    @side_project = SideProject.find(params[:side_project_id])
    @comment = @side_project.comments.find(params[:id])
    @comment.destroy
    redirect_to side_project_path(@side_project)
  end

end
