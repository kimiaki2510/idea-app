class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, id: false, primary_key: :id do |t|
      t.integer :id, limit: 8
      t.string :name, null: false

      t.timestamps
    end
  end
end
