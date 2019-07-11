class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.int :step
      t.string :instruction

      t.timestamps
    end
  end
end
