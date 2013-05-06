# encoding: utf-8
# Categorías de servicio requeridas por un projecto
class ProjectRequiredCategory < ActiveRecord::Base
  unloadable

  belongs_to :project

  has_many :required_categories

  has_many :categories, through: :required_categories, source: :provider_category, class_name: 'ProviderCategory'

  def self.for_project(project)
    where(project_id: project.id).first
  end
end
