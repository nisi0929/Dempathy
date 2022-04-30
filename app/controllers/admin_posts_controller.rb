class AdminPostsController < ApplicationController
  include Admin
  before_action :check_admin
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = '投稿完了'
      redirect_to admin_posts_path
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = 'admin postアップデート'
      redirect_to admin_posts_path
    else
      render 'edit'
    end
  end

  def destroy; end

  private

  def post_params
    params
      .require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id)
  end
end
