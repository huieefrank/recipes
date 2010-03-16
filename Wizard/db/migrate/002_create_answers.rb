#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class CreateAnswers < ActiveRecord::Migration
  
  def self.up 
    
    create_table :answers do |t|
      t.string   :value
      t.integer  :question_id, :quiz_id
      t.timestamps
    end  
    
  end
  
  def self.down
    drop_table :answers
  end
  
end
