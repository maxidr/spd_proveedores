class CreateRequiredCategories < ActiveRecord::Migration
  def change
    create_table :required_categories do |t|
      t.references :project_required_category
      t.references :user
      t.references :provider_category
    end
    add_index :required_categories, :project_required_category_id
    add_index :required_categories, :user_id
    add_index :required_categories, :provider_category_id
  end
end
