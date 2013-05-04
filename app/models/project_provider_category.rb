# encoding: utf-8
#
# Relaciona el proveedor del proyecto con las categorías que brinda (para dicho projecto)
#
class ProjectProviderCategory < ActiveRecord::Base
  unloadable

  belongs_to :project_provider
  belongs_to :provider_category

  delegate :service, :item, :mode, :description, to: :provider_category
end
