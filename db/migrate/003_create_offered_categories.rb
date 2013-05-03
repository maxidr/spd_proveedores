class CreateOfferedCategories < ActiveRecord::Migration
  def change
    create_table :offered_categories do |t|
      t.references :provider
      t.references :provider_category
    end
    add_index :offered_categories, :provider_id
    add_index :offered_categories, :provider_category_id
  end
end
