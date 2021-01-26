class CategoriesController < ApplicationController
   before_action :set_category, only: [ :show, :edit, :update ]

  def new
    @category = Category.new
  end

  def edit
  end

  def show
    @products = @category.products
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to '/'
    end
  end

  def update
    @products = @category.products
    if @category.update(category_params)
      redirect_to '/'
    end
  end

  def destroy
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :promote, :rank)
  end
end
