class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy authorized]
  before_action :authorized, only: %i[edit update destroy]

  def show; end

  def index
    @projects = Project.all
    @count = 1
    @count2 = 1
    @count3 = 1
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    authorize @project
    if @project.save!
      redirect_to root_path
    else
      render :new, notice: 'Oups, il y a eu un petit problème...'
    end
  end

  def edit
    @categories_instances = Categorie.all
    @categories_names = @categories_instances.map(&:name)
    @categories_ids = @categories_instances.map(&:id)
  end

  def update
    @project.update(project_params)
    redirect_to root_path, notice: 'Ce projet à bien été modifié !'
  end

  def destroy
    @project.destroy
    redirect_to root_path, notice: 'Ce projet à bien été supprimé !'
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :url, :creation_date, :categorie_id, :photo)
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def authorized
    authorize @project
  end
end
