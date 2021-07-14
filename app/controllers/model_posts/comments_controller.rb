class ModelPosts::CommentsController<CommentsController
  before_action :set_commentable
  private
  def set_commentable
    @commentable = ModelPost.find(params[:model_post_id])
  end
end