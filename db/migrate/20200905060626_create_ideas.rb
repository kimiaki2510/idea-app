class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas, id: false, primary_key: :id do |t|
      t.integer :id, limit: 8
      t.integer :category, foreign_key: true, null: false
      t.text :body

      t.timestamps
    end
  end
end
