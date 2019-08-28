class CommentsController < ApplicationController

  def index
    @thing = Thing.find(params[:thing_id])
    @comments = @thing.comments.all
    json_response(@comments)
  end

  def new
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.new
    json_response(@comment)
  end

  def show
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.find(params[:id])
    json_response(@comment)
  end

  def create
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.create!(comment_params)
    json_response(@comment, :created)
  end

  def update
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.find(params[:id])
    if @comment.update!(comment_params)
      render status: 200, json: {
        message: "Comment successfully updated!"
      }
    end
  end

  def destroy
    @thing = Thing.find(params[:thing_id])
    @comment = @thing.comments.find(params[:id])
    if @comment.update(comment_params)
      render status: 200, json: {
        message: "Comment has been deleted"
      }
    end
  end

  private
  def comment_params
    params.permit(:content,:user_id, :thing_id)
  end
end
