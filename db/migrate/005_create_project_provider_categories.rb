class CreateProjectProviderCategories < ActiveRecord::Migration
  def change
    create_table :project_provider_categories do |t|
      t.references :project_provider
      t.references :provider_category
    end
    add_index :project_provider_categories, :project_provider_id
    add_index :project_provider_categories, :provider_category_id
  end
end
