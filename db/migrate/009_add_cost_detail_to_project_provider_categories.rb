class AddCostDetailToProjectProviderCategories < ActiveRecord::Migration
  def up
    add_column :project_provider_categories, :cost_details, :string, limit: 255 
  end

  def down
    remove_column :project_provider_categories, :cost_details
  end

end
