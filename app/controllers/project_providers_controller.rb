# encoding: utf-8
# Relaciona los projectos con los proveedores
class ProjectProvidersController < ApplicationController
  unloadable

  def index
    @project = Project.find(params[:project_id])
    @project_providers = ProjectProvider.for_project(@project)
    project_required_category = ProjectRequiredCategory.for_project(@project)
    @categories = project_required_category.nil? ? [] :  project_required_category.categories
  end

  def new
    @project = Project.find(params[:project_id])
    project_required_categories = ProjectRequiredCategory.for_project(@project)
    @required_categories = project_required_categories.nil? ? [] : project_required_categories.categories
  end

  def create
    #project = Project.find(params[:project_id])
    provider = Provider.by_user(User.current)
    result = ProviderActions.new(provider).suscribe_to_project(params)

    if result[:valid]
      flash[:notice] = 'Quedó suscripto al projecto como proveedor'
      redirect_to(controller: :project_providers, action: :index, params: { project_id: project.id })
    else
      # No grabó la relación
      puts "Error en suscripción"
    end
  end

  private

  def build_project_provider
    project_provider = ProjectProvider.new project: project, provider: provider
  end

  def project
    @project ||= Project.find(params[:project_id])
  end

  def provider
    @provider ||= Provider.by_user(User.current)
  end

end
