class Api::V1::ProductsController < ApplicationController

  def index
    render json: Product.all, each_serializer: Api::V1::ProductSerializer, root: :products
  end

  def show
    render json: Product.find_by(id: params[:id]), serializer: Api::V1::ProductSerializer, root: :products
  end

  def create
    render json: Product.create(product_params), serializer: Api::V1::ProductSerializer, root: :products
  end

  def destroy
    render json: Product.find_by(id: params[:id]).destroy, serializer: Api::V1::ProductSerializer, root: :products
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update_attributes product_params
    render json: product, serializer: Api::V1::ProductSerializer, root: :products
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :provider_id)
  end
end
