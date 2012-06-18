class TagsController < ApplicationController
  skip_before_filter :authorize, only: [:index]
  def index
    #@tags = Tag.all()
    @tag = Tag.find(params[:id])
    #@tags = Tag.paginate page: params[:page], order: 'created_at desc', per_page: 10
  end
end
