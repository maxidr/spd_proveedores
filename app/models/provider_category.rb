# encoding: utf-8
# Contiene
#
# + Servicio            [service]
# + Item                [item]
# + Modalidad           [mode]
# + Descripción         [description]
# + Unidad de medidad   [measurament_unit]
#
# Ejemplo:
# 
#   Servicio    | Item | Modalidad                                | Descripción |
#   ------------+------+------------------------------------------+-----
#   Consultoría |  A   | Dirección de proyectos                   | ...
#   Consultoría |  B   | Servicios de implantación o instalación  | ...
#   
#   Soporte     |  A   | Presencial                               | ...
#   Soporte     |  B   | Telefónico                               | ...
#
#
class ProviderCategory < ActiveRecord::Base
  unloadable

  validates_presence_of :service, :mode, :measurament_unit
  validates_uniqueness_of :mode, scope: :service

end
