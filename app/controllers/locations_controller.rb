class LocationsController < ApplicationController

  def index
    @thing = Thing.find(params[:thing_id])
    @locations = @thing.locations.all
    json_response(@locations)
  end

  def new
    @thing = Thing.find(params[:thing_id])
    @location = @thing.locations.new
    json_response(@location)
  end

  def show
    @thing = Thing.find(params[:thing_id])
    @location = @thing.locations.find(params[:id])
    json_response(@location)
  end

  def create
    @thing = Thing.find(params[:thing_id])
    @location = @thing.locations.create!(location_params)
    json_response(@location, :created)
  end

  def update
    @thing = Thing.find(params[:thing_id])
    @location = @thing.locations.find(params[:id])
    if @location.update!(location_params)
      render status: 200, json: {
        message: "Location successfully updated!"
      }
    end
  end

  def destroy
    @thing = Thing.find(params[:thing_id])
    @location = @thing.locations.find(params[:id])
    if @location.update(location_params)
      render status: 200, json: {
        message: "Location has been deleted"
      }
    end
  end

  private
  def location_params
    params.permit(:lat, :long)
  end
end
