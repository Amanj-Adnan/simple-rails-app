class PostPhotoController < ApplicationController
  before_action :authenticate_model!
  def show
  end

  def create
    @post = current_model.model_posts.new(post_params)
    if @post.save

      redirect_to root_path
    else
      render :show
    end
  end




  private

  def post_params
    params.permit(:title,:content,:image)
  end
end
