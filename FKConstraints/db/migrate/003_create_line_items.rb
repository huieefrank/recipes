#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---

class CreateLineItems < ActiveRecord::Migration

  
  extend MigrationHelpers
  
  
  def self.up
    create_table :line_items do |t|
      t.integer :product_id, :null => false
      t.integer :order_id,   :null => false
    end
  
  
    fk :line_items, :product_id, :products
    fk :line_items, :order_id,   :orders
  
  
  end
  

  
  def self.down
  
  
    drop_fk :line_items, :order_id
    drop_fk :line_items, :product_id
  
  
    drop_table :line_items
  end
  
end
