class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :update, :destroy]

  # GET /sales
  def index
      ActiveRecord::Base.include_root_in_json = true

    @sales = Sale.where(user_id: @current_user.id)

    render json: @sales
  end

  # GET /sales/1
  def show
    if @current_user.id == @sale.user_id
      render json: @sale
    else  
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  # POST /sales
  def create
    @sale = Sale.new(sale_params)
    @sale.user_id = @current_user.id

    if @sale.save
      render json: @sale, status: :created, location: @sale
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales/1
  def update
    if @sale.update(sale_params)
      render json: @sale
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales/1
  def destroy
    if @sale.user_id == @current_user.id
      @sale.destroy
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sale_params
      params.require(:sale).permit(:product, :price, :quantity, :seller)
    end
end
