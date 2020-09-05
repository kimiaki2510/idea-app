class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.bigint :category
      t.text :body

      t.timestamps
    end
  end
end
