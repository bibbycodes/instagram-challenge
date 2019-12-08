class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    Post.create(post_params)
    redirect_to posts_url
  end

  def post_params
    params.require(:post).permit(:description, :image)
  end
end
