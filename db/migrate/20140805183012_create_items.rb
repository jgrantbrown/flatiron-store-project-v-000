class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
     t.belongs_to :category, index: true
     t.string :title
     t.string :inventory
     t.integer :price

   end
  end
end
