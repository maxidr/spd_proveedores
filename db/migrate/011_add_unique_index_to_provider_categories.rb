class AddUniqueIndexToProviderCategories < ActiveRecord::Migration
  def up
    add_index :provider_categories, [:service, :mode], unique: true
  end

  def down
    remove_index :provider_categories, column: [:service, :mode]
  end
end
