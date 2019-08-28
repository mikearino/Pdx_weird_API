class ThingsController < ApplicationController

  def index
    @response = nil

    if params[:request] == "random"
      @response = Thing.random
    elsif params[:request] == "most_comments"
      @response = Thing.most_comments

    elsif params[:request] == "recent"
      @response = Thing.recent_three
    else
      @response = Thing.all
  end
  json_response(@response)
end

  def show
    @thing = Thing.find(params[:id])
    json_response(@thing)
  end

  def create
    @thing = Thing.create!(thing_params)
    json_response(@thing, :created)
  end

  def update
    @thing = Thing.find(params[:id])
    if @thing.update!(thing_params)
      render status: 200, json: {
        message: "Update successful!"
      }
    end
  end

  def destroy
    @thing =Thing.find(params[:id])
    if @thing.destroy!
      render status: 200, json: {
        message: "Delete successful!"
      }
    end
  end

  private
  def thing_params
    params.permit(:name, :content, :rating, :tag)
  end
end
