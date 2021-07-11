class HomeController < ApplicationController

  def index
     @model_posts = ModelPost.all

  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!")
    else

      @results = ModelPost.joins(:model).all.where('title LIKE :search OR email LIKE :search ', search: "%"+  params[:search] +"%")
    end
  end
end
