class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :post_find, only: [:show, :destroy, :edit, :update]


  def index
    @posts = Post.all.order('created_at DESC')

  end 

  def new
    @post = Post.new
  end 

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end 

  def show

  end

  def destroy
    @post.destroy
    redirect_to root_path

  end

  def edit
    
  end

  def update
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else 
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def post_find
    @post = Post.find(params[:id])
  end



end
