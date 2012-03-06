class GraphController < ApplicationController
  def index
    #@impressions = Impression.all
    @impressions = Impression.where("created_at > ?", 4.hours.ago).order("created_at ASC")

    respond_to do |format|
      format.html
      format.json { render :json => @impressions.as_json }
    end
  end
end