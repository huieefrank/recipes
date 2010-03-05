#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
class ErrataController < ApplicationController
  # GET /errata
  # GET /errata.xml
  def index
    @errata = Erratum.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @errata }
    end
  end

  # GET /errata/1
  # GET /errata/1.xml
  def show
    @erratum = Erratum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @erratum }
    end
  end

  # GET /errata/new
  # GET /errata/new.xml
  def new
    @erratum = Erratum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @erratum }
    end
  end

  # GET /errata/1/edit
  def edit
    @erratum = Erratum.find(params[:id])
  end

  # POST /errata
  # POST /errata.xml
  def create
    @erratum = Erratum.new(params[:erratum])

    respond_to do |format|
      if @erratum.save
        flash[:notice] = 'Erratum was successfully created.'
        format.html { redirect_to(@erratum) }
        format.xml  { render :xml => @erratum, :status => :created, :location => @erratum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @erratum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /errata/1
  # PUT /errata/1.xml
  
  def update
    @erratum = Erratum.find(params[:id])

    respond_to do |format|
      if @erratum.update_attributes(params[:erratum])
        flash[:notice] = 'Erratum was successfully updated.'
        format.html { redirect_to(@erratum) }
        format.xml  { head :ok }
        format.js   { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml    => @erratum.errors, 
                             :status => :unprocessable_entity }
        format.js   { head :unprocessable_entity }
      end
    end
  end
  

  # DELETE /errata/1
  # DELETE /errata/1.xml
  def destroy
    @erratum = Erratum.find(params[:id])
    @erratum.destroy

    respond_to do |format|
      format.html { redirect_to(errata_url) }
      format.xml  { head :ok }
    end
  end
end
