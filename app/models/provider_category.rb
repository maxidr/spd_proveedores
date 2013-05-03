# encoding: utf-8
# Contiene
#
# + Servicio      [service]
# + Item          [item]
# + Modalidad     [mode]
# + Descripción   [description]
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

end
