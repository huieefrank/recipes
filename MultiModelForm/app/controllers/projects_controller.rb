#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class ProjectsController < ApplicationController

  def index
    @projects = Project.find(:all)
  end
  
  def show
    @project = Project.find(params[:id])
  end

  
  def new
    @project = Project.new
    @project.tasks.build
  end
  
  
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Successfully created project and tasks."
      redirect_to projects_path
    else
      render :action => 'new'
    end
  end
  
  
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    params[:project][:existing_task_attributes] ||= {}
    
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Successfully updated project and tasks."
      redirect_to project_path(@project)
    else
      render :action => 'edit'
    end
  end
  
  
end
