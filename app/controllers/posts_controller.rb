class PostsController < ApplicationController

  before_action :post_find, only: [:show, :destroy]


  def index
    @posts = Post.all.order('created_at DESC')

  end 

  def new

  end 

  def create
    @post = Post.create(post_params)
    if @post
      redirect_to @post
    end

  end 

  def show

  end

  def destroy
    @post.destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def post_find
    @post = Post.find(params[:id])
  end



end
