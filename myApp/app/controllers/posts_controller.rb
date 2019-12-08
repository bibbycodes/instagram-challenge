class PostsController < ApplicationController
  def new
    @post = current_user.posts.build
  end

  def index
    @posts = current_user.posts.order(created_at: :desc)
  end

  def show
  end

  def create
    @post = current_user.posts.create(post_params)
    print Rails.configuration.database_configuration["development"]["database"]
    if @post.save
      flash[:success] = "File Uploaded!"
      redirect_to posts_url
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def post_params
    params.require(:post).permit(:description, :image)
  end
end
