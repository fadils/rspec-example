class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_url(@product)
    else
      render :action => "new"
    end
  end

  def new
    render :action => "new"
  end

  def show
    begin
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render :status => 404
    end
  end

  def index
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :description, :price)
  end
end
