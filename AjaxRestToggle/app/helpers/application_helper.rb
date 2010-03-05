#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  
  def toggle_value(object)
    remote_function(:url      => url_for(object), 
                    :method   => :put, 
                    :before   => "Element.show('spinner-#{object.id}')", 
                    :complete => "Element.hide('spinner-#{object.id}')",
                    :with     => "this.name + '=' + this.checked")
  end
  
  
end
