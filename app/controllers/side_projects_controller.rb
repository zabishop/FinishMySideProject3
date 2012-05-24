class SideProjectsController < ApplicationController

  skip_before_filter :authorize, only: [:index, :show]

  #http_basic_authenticate_with :name => "Zack", :password => "secret", :except => [:index, :show]

  # GET /side_projects
  # GET /side_projects.json
  def index

    @side_projects = SideProject.paginate page: params[:page], order: 'created_at desc', per_page: 10
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @side_projects }
    end
  end

  # GET /side_projects/1
  # GET /side_projects/1.json
  def show
    @side_project = SideProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @side_project }
    end
  end

  # GET /side_projects/new
  # GET /side_projects/new.json
  def new
    @side_project = SideProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @side_project }
    end
  end

  # GET /side_projects/1/edit
  def edit
    @side_project = SideProject.find(params[:id])
  end

  # POST /side_projects
  # POST /side_projects.json
  def create
    @side_project = SideProject.new(params[:side_project])

    respond_to do |format|
      if @side_project.save
        format.html { redirect_to @side_project, notice: 'Side project was successfully created.' }
        format.json { render json: @side_project, status: :created, location: @side_project }
      else
        format.html { render action: "new" }
        format.json { render json: @side_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /side_projects/1
  # PUT /side_projects/1.json
  def update
    @side_project = SideProject.find(params[:id])

    respond_to do |format|
      if @side_project.update_attributes(params[:side_project])
        format.html { redirect_to @side_project, notice: 'Side project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @side_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_projects/1
  # DELETE /side_projects/1.json
  def destroy
    @side_project = SideProject.find(params[:id])
    @side_project.destroy

    respond_to do |format|
      format.html { redirect_to side_projects_url }
      format.json { head :no_content }
    end
  end

  def comment

  end

  def user
  end

end
