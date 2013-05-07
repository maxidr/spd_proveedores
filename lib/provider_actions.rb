class ProviderActions

  attr_reader :provider

  def initialize(provider)
    @provider = provider
  end

  def suscribe_to_project(params)
    project = Project.find(params[:project_id])
    project_provider = ProjectProvider.new project: project, provider: provider
    categories = params[:categories]
    return { valid: false, model: project_provider, errors: ["Debe seleccionar al menos un servicio a ofrecer"] } if categories.nil?
    categories.each do |category| 
      project_provider.categories.build(provider_category: ProviderCategory.find(category[:id]), cost_details: category[:cost_details])
    end
    saved = project_provider.save
    { valid: saved, model: project_provider }
  end
  
end
