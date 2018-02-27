class AddDefaultValueToShowAttribute < ActiveRecord::Migration
  def change
    add_column :line_items, :quantity, :integer, default: 1, null: false
  end
end
