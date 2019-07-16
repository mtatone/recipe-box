class RemoveDirectionNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :directions, :step
  end
end
