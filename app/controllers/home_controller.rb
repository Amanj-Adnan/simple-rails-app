class HomeController < ApplicationController
  def index
     @model_posts = ModelPost.all
  end
end
