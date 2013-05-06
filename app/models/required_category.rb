# encoding: utf-8
#
# Una de las categorias requerida por un proyecto
# Ver app/models/project_required_category
class RequiredCategory < ActiveRecord::Base
  unloadable

  belongs_to :project_required_category
  belongs_to :user
  belongs_to :provider_category
end
