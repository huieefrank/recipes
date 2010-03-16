#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class CreateQuestions < ActiveRecord::Migration

  def self.up
    
    create_table :questions do |t|
      t.string  :type, :text, :tag
      t.integer :quiz_id
      t.timestamps
    end
    
  end
  
  def self.down
    drop_table :questions
  end
  
end
