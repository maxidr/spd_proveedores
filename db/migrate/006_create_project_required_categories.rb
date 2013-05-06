class CreateProjectRequiredCategories < ActiveRecord::Migration
  def change
    create_table :project_required_categories do |t|
      t.references :project
    end
    add_index :project_required_categories, :project_id
  end
end
