class AddMeasurementUnitToProviderCategories < ActiveRecord::Migration
  def up
    add_column :provider_categories, :measurament_unit, :string, limit: 255 
  end

  def down
    remove_column :provider_categories, :measurament_unit
  end
end
