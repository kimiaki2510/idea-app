class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.references :category, foreign_key: true, null: false, type: :bigint
      t.text :body

      t.timestamps
    end
  end
end
