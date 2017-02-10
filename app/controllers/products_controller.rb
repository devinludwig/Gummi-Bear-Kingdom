class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product Saved!"
      redirect_to products_path
    else
      flash[:alert] = "Try Again!"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product Updated!"
      redirect_to products_path
    else
      flash[:alert] = "Try Again!"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def search
    @products = Product.basic_search(params[:query])
    render :index
  end

private
  def product_params
    params.require(:product).permit(:name, :origin, :cost)
  end
end
