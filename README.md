# Proveedores SPD

Plugin de redmine para la gestión (básica) de proveedores para la plataforma de [Software Público para el Desarrollo (SPD)](http://cluster.softwarepublico.gob.ar/)


      +--------------------+         +---------------------+
      |   providers        |         | project_providers   |
      |--------------------|         |---------------------|
      | user_id            |         | project_id          |
      |                    |<--------+ provider_id         |<------+
      |                    |         |                     |       |
      +--------------------+         +---------------------+       |
              ^                                                    |
              |                                                    |
              |                                                    |
     +--------+------------+              +------------------------+-------+
     | offered_categories  |              | project_provider_categories    |
     |---------------------|              |--------------------------------|
     | provider_id         |              | project_provider_id            |
     | provider_category_id|              | provider_category_id           |
     |                     |              |                                |
     +----------+----------+              +---+----------------------------+
                |                             |
                |                             |
                |                             |
                |                             v
                |       +-----------------------------+
                +------>|  provider_categories        |
                        |-----------------------------|<--------------+
                        |                             |               |
                        +-----------------------------+               |
                                                                      |
                                                                      |
                                                           +----------+-------------------------+
                                                           |  required_categories               |
      +--------------------------------+                   |------------------------------------|
      |project_required_categories     |                   | project_required_category_id       |
      |--------------------------------| <-----------------+ user_id (el que da de alta el rqm) |
      |project_id                      |                   | provider_category_id               |
      |                                |                   |                                    |
      +--------------------------------+                   +------------------------------------+

 
 http://www.asciiflow.com/#8110739738962445554/1253260571
