class ProjectsController < ApplicationController
  expose(:projects) { Project.all }
  expose(:project)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if project.save
      redirect_to project, notice: 'Project was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if project.update_attributes(params[:project])
      redirect_to project, notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    project.destroy
    redirect_to projects_url
  end
end
