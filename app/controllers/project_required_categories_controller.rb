class ProjectRequiredCategoriesController < ApplicationController
  unloadable

  def new
    @project = Project.find(params[:project_id])
  end

  def create
    project = Project.find(params[:project_id])
    project_requirement = ProjectRequiredCategory.new(project: project)
    params[:categories_ids].each do |category_id|
      project_requirement.required_categories.build(provider_category: ProviderCategory.find(category_id), user: User.current)
    end

    if project_requirement.save
      flash[:notice] = 'Se generaron los requerimientos para el proyecto'
      redirect_to project_providers_path(project_id: project.id)
    else
      flash[:error] = project_requirement.full_messages
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @project_requirement = ProjectRequiredCategory.for_project(@project)
  end
end
