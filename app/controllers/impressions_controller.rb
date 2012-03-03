class ImpressionsController < ApplicationController
  # GET /impressions
  # GET /impressions.json
  def index
    @impressions = Impression.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @impressions }
    end
  end

  # GET /impressions/1
  # GET /impressions/1.json
  def show
    @impression = Impression.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @impression }
    end
  end

  # GET /impressions/new
  # GET /impressions/new.json
  def new
    @impression = Impression.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @impression }
    end
  end

  # GET /impressions/1/edit
  def edit
    @impression = Impression.find(params[:id])
  end

  # POST /impressions
  # POST /impressions.json
  def create
    @impression = Impression.new(params[:impression])

    respond_to do |format|
      if @impression.save
        format.html { redirect_to @impression, :notice => 'Impression was successfully created.' }
        format.json { render :json => @impression, :status => :created, :location => @impression }
      else
        format.html { render :action => "new" }
        format.json { render :json => @impression.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /impressions/1
  # PUT /impressions/1.json
  def update
    @impression = Impression.find(params[:id])

    respond_to do |format|
      if @impression.update_attributes(params[:impression])
        format.html { redirect_to @impression, :notice => 'Impression was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @impression.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /impressions/1
  # DELETE /impressions/1.json
  def destroy
    @impression = Impression.find(params[:id])
    @impression.destroy

    respond_to do |format|
      format.html { redirect_to impressions_url }
      format.json { head :no_content }
    end
  end
end
