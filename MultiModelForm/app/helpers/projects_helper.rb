#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
module ProjectsHelper
  
  
  def add_task_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :tasks, :partial => 'task', :object => Task.new
    end
  end
  

end
