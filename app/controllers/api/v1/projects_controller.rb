class Api::V1::ProjectsController < ApplicationController
  before_action :set_project, only: %i[show]

  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @user = User.find(params[:user_id])
    @project = @user.projects.find(params[:id])
    render json: @project
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: { status: 204, errors: @project.errors.full_messages }
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.permit(:repo_link, :live_link, :picture, :description, :name, :user_id)
  end
end
