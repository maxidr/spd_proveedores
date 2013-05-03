class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.references :user
    end
    add_index :providers, :user_id, unique: true
  end
end
