class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.integer :step
      t.string :instruction
      t.integer :recipe_id

      t.timestamps
    end
  end
end
