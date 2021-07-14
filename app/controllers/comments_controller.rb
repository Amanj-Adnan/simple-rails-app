class CommentsController < ApplicationController
  before_action :authenticate_model!

  def index
    @comment=@commentable.comments.all
  end
  def new
    @comment=@commentable.comments.new
  end

  def create

    @comment = @commentable.comments.new(get_params)
    @comment.model = current_model
    if @comment.save

      redirect_to root_path
    else
      render :new ,alert:"something wrong"
    end
  end


  private

  def get_params
    params.require(:comment).permit(:body ,:commentable_type )
  end


end
