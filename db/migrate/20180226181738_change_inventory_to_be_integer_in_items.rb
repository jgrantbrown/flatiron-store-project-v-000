class ChangeInventoryToBeIntegerInItems < ActiveRecord::Migration
  def change
    change_column :items, :inventory, :integer
  end
end
