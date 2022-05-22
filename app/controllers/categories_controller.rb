class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = '投稿完了'
      redirect_to categories_path
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = '修正完了'
      redirect_to categories_path
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:success] = '削除完了'
      redirect_to categories_path
    else
      flash.now[:alert] = '削除失敗'
      render 'index'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :color)
  end
end
