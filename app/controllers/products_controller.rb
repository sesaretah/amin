class ProductsController < ApplicationController
     before_action :set_product, only: [ :edit, :update ]
  def new
    @product = Product.new
  end

  def edit
  end

  def show
    id =  params[:id].split('_')[0]
    @product =  Product.find(id)
  end

  def create
    @product = Product.new(product_params)
    @product.avatar.attach(params[:avatar])
    if @product.save
      redirect_to '/'
    end
  end

  def update
    if @product.update(product_params)
      redirect_to "/products/#{@product.id}"
    end
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :category_id, :promote, :rank, :avatar,:price)
  end
end
