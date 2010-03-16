#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class CreateQuizzes < ActiveRecord::Migration

  def self.up
    
    create_table :quizzes do |t|
      t.string :state
      t.timestamps
    end
    
  end
  
  def self.down
    drop_table :quizzes
  end
  
end
