#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class CreateOrders < ActiveRecord::Migration

  def self.up
    create_table :orders do |t|
      t.string :name
      t.text   :address
    end
  end

  def self.down
    drop_table :orders
  end
end
