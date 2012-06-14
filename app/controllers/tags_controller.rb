class TagsController < ApplicationController
  skip_before_filter :authorize, only: [:index]
  def index
    #@tags = Tag.all()
    @tag = Tag.find(params[:id])
  end
end
