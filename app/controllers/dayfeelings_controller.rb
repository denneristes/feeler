class DayfeelingsController < ApplicationController
  # GET /dayfeelings
  # GET /dayfeelings.xml
  def index
    @dayfeelings = Dayfeeling.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dayfeelings }
    end
  end

  # GET /dayfeelings/1
  # GET /dayfeelings/1.xml
  def show
    @dayfeeling = Dayfeeling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dayfeeling }
    end
  end

  # GET /dayfeelings/new
  # GET /dayfeelings/new.xml
  def new
    @dayfeeling = Dayfeeling.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dayfeeling }
    end
  end

  # GET /dayfeelings/1/edit
  def edit
    @dayfeeling = Dayfeeling.find(params[:id])
  end

  # POST /dayfeelings
  # POST /dayfeelings.xml
  def create
    @dayfeeling = Dayfeeling.new(params[:dayfeeling])

    respond_to do |format|
      if @dayfeeling.save
        format.html { redirect_to(@dayfeeling, :notice => 'Dayfeeling was successfully created.') }
        format.xml  { render :xml => @dayfeeling, :status => :created, :location => @dayfeeling }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dayfeeling.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dayfeelings/1
  # PUT /dayfeelings/1.xml
  def update
    @dayfeeling = Dayfeeling.find(params[:id])

    respond_to do |format|
      if @dayfeeling.update_attributes(params[:dayfeeling])
        format.html { redirect_to(@dayfeeling, :notice => 'Dayfeeling was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dayfeeling.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dayfeelings/1
  # DELETE /dayfeelings/1.xml
  def destroy
    @dayfeeling = Dayfeeling.find(params[:id])
    @dayfeeling.destroy

    respond_to do |format|
      format.html { redirect_to(dayfeelings_url) }
      format.xml  { head :ok }
    end
  end
end
