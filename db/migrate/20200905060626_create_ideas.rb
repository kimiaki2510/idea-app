class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|      
      t.integer :category, foreign_key: true, null: false
      t.text :body

      t.timestamps
    end
  end
end
