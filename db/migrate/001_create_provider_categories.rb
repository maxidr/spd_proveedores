class CreateProviderCategories < ActiveRecord::Migration
  def change
    create_table :provider_categories do |t|
      t.string :service
      t.string :item
      t.string :mode
      t.text :description
    end
  end
end
