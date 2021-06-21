class ModelPostsController < ApplicationController
  before_action :authenticate_model!
  before_action :set_photo ,only: [:edit,:update ,:destroy]
  def index
    @model_posts = current_model.model_posts
  end

  def new
  end

  def create
    @new_post = current_model.model_posts.new(post_params)
    if @new_post.save

      redirect_to root_path
    else
      render :show
    end
  end

  def edit

  end

  def update
    if @model_post.update(post_params)

      redirect_to model_posts_path
      puts("looooooooooooooooooooooooooooooooool")
    else
      render :edit
    end
  end

  def destroy
    @model_post.destroy
    redirect_to model_posts_path
  end




  private

  def post_params
    params.require(:model_post).permit(:title,:content,:image)
  end

  def set_photo
    @model_post = ModelPost.find(params[:id])
  end
end
