class AddUniqueIndexToProjectProviders < ActiveRecord::Migration
  def up
    add_index :project_providers, [:provider_id, :project_id], unique: true
  end

  def down
    remove_index :project_providers, column: [:provider_id, :project_id]
  end
end
