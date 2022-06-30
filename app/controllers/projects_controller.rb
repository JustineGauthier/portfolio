class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy authorize]
  before_action :authorized, only: %i[new create edit update destroy]

  def show; end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def edit
    @categories_instances = Categorie.all
    @categories_names = @categories_instances.map(&:name)
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
    params.require(:project).permit(:title, :description, :url, :creation_date, :categorie)
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def authorized
    authorize @project
  end
end
