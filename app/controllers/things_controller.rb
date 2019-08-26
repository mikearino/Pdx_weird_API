class ThingsController < ApplicationController

  def index
    @things = {"Things": "The secret of getting ahead is getting started."}
    json_response(@things)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
