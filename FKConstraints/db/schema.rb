#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "line_items", :force => true do |t|
    t.integer "product_id", :null => false
    t.integer "order_id",   :null => false
  end

  add_index "line_items", ["product_id"], :name => "fk_line_items_product_id"
  add_index "line_items", ["order_id"], :name => "fk_line_items_order_id"

  create_table "orders", :force => true do |t|
    t.string "name"
    t.text   "address"
  end

  create_table "products", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.decimal "price",       :precision => 8, :scale => 2, :default => 0.0
  end

end
