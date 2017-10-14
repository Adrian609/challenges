class CampersController < ApplicationController

  def index
    if params[:campsite_id]
      @title = "Campsite's Campers:"
      @campsite = Campsite.find(params[:campsite_id])
      @campers = @campsite.campers
    else
      @title = "All Campers:"
      @campers = Camper.all
    end

  end
end
