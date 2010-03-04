#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---

require 'rubygems'
require 'active_resource'



ActiveResource::Base.logger = Logger.new("#{File.dirname(__FILE__)}/events.log")



class Event < ActiveResource::Base
  self.site = "http://localhost:3000"
end




e = Event.find(1)
e.price = 20.00
e.save