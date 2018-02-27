class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
     t.belongs_to :item, index: true
     t.belongs_to :cart, index: true
   end
   end
end
