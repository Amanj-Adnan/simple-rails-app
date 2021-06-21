class LikesController < ApplicationController
  before_action :find_post
  before_action :find_like, only: [:destroy]
  # before_action :already_liked? ,only: [:create]
  def create
    if  already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @model_post.likes.create(model_id: current_model.id)
    end
    redirect_to root_path(@model_post)

  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to root_path(@model_post)
  end

  private

  def find_post
    @model_post = ModelPost.find(params[:model_post_id])
  end

  def already_liked?
    Like.where(model_id: current_model.id, model_post_id:
      params[:model_post_id]).exists?
  end
  def find_like
    @like = @model_post.likes.find(params[:id])
  end
end
