class PostsController < ApplicationController

  def index
    @posts = Post.all
    render 'blog.html.erb'
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    render 'show.html.erb'
  end

  def destroy
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    @post.destroy
    flash[:danger] = "Post successfully destroyed!"
    redirect_to "/"
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
