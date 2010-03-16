#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---

class Quiz < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  has_many :questions


  acts_as_state_machine :initial => :q10
  
  state :q10, :after => :current_question
  state :q20, :after => :current_question
  state :q30, :after => :current_question
  
  event :next do
    transitions :to => :q20, :from => :q10
    transitions :to => :q30, :from => :q20
  end
  
  event :previous do
    transitions :to => :q10, :from => :q20
    transitions :to => :q20, :from => :q30
  end
  
  def current_question
    @current_question ||= find_question(self.current_state)
  end

private

  def find_question(state)
    Question.find_by_tag(state.to_s)
  end

end

