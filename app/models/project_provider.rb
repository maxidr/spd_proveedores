# encoding: utf-8
#
# Relaciona un proveedor con un proyecto
#
class ProjectProvider < ActiveRecord::Base
  unloadable

  belongs_to :project
  belongs_to :provider

  # Categorías de servicios que brinda un proveedor para un project
  has_many :categories, class_name: 'ProjectProviderCategory' 

  scope :for_project, lambda { |project| where(project_id: project.id) }

  delegate :name, to: :provider, prefix: true

  def self.by_project_and_provider(project, provider)
    where(project_id: project.id).where(provider_id: provider.id).first
  end

end
