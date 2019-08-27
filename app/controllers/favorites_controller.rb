class FavoritesController < ApplicationControllers

  def new
    @user = User.find(params[:id])
    @thing = Thing.find(params[:id])
    json_response(@user)
    json_response(@thing)
  end

  def show
    @user = User.find(params[:id])
    @thing = Thing.find(params[:thing_id])
    json_response(@user)
    json_response(@thing)
  end

  def delete
    @user = User.find(params[:id])
    @thing = Thing.find(params[:thing_id])
    @thing.destroy!
  end

end
