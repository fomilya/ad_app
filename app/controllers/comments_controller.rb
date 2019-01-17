class CommentsController < ApplicationController
  def create
    @ad = Ad.find(params[:ad_id])
    @comment = @ad.comments.create(comment_params)
    redirect_to ad_path(@ad)
  end

  def destroy
    @ad = Ad.find(params[:ad_id])
    @comment = @ad.comments.find(params[:comment_id]).destroy
    redirect_to ad_path(@ad)
  end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end

end
