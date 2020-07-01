class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    p params[:post][:message]
    Post.update(params[:id], :message => params[:post][:message])
  
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
