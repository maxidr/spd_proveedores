class CreateProjectProviders < ActiveRecord::Migration
  def change
    create_table :project_providers do |t|
      t.references :project
      t.references :provider
    end
    add_index :project_providers, :project_id
    add_index :project_providers, :provider_id
  end
end
