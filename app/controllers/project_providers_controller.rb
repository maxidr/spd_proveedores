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
    if project_required_categories.nil?
      @required_categories = []
    else
      @required_categories = project_required_categories.categories & categories_offered_of_provider
    end
  end

  
  def create
    #project = Project.find(params[:project_id])
    provider = Provider.by_user(User.current)
    result = ProviderActions.new(provider).suscribe_to_project(params)

    if result[:valid]
      flash[:notice] = 'Quedó suscripto al projecto como proveedor'
      redirect_to(controller: :project_providers, action: :index, params: { project_id: project.id })
    else
      # TODO Implementar esto
      flash[:error] = result[:errors]
      render :action => :new
    end
  end

  private
  
  def categories_offered_of_provider
    Provider.by_user(User.current).categories
  end

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
