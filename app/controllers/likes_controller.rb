class LikesController < ApplicationController
  before_action :find_post
  def create
    @model_post.likes.create(model_id: current_model.id)
    redirect_to root_path(@model_post)
  end
  private
  def find_post
    @model_post = ModelPost.find(params[:model_post_id])
  end
end
