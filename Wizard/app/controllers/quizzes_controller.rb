#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class QuizzesController < ApplicationController
  
  def index
    @quizzes = Quiz.find(:all)
  end
    
  def new
  	@quizzes = Quiz.create
  	redirect_to(:action =>'edit',:id =>@quizzes.id)
  end
  	
  def edit
    @quiz   = Quiz.find(params[:id])
    @answer = @quiz.answers.
                find_by_question_id(@quiz.current_question.id) || Answer.new
  end
  
  
  
  def update
    @quiz = Quiz.find(params[:id])
    @answer = @quiz.answers.find_by_question_id(@quiz.current_question) 
    
    if @answer
      @answer.update_attribute(:value, params[:answer][:value])
    else
      @answer = Answer.new(:value    => params[:answer][:value],
                           :question => @quiz.current_question)
      @quiz.answers << @answer
    end
    
    case params[:direction]
    when 'next'
      @quiz.next!
    when 'previous'
      @quiz.previous!
    else
      flash[:error] = "Invalid direction!"
    end
    
    redirect_to :action => :edit
  end
  
  
end
