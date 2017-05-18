class CashesController < ApplicationController
  before_action :set_cash, only: [:show, :update, :destroy]

  # GET /cashes
  def index
    @cashes = Cash.where(user_id: @current_user.id, date_close: nil).last

    render json: @cashes
  end

  # GET /cashes/1
  def show
    render json: @cash
  end

  # POST /cashes
  def create
    @cash = Cash.new(cash_params)

    if @cash.save
      render json: @cash, status: :created, location: @cash
    else
      render json: @cash.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cashes/1
  def update
    if @cash.update(cash_params)
      render json: @cash
    else
      render json: @cash.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cashes/1
  def destroy
    @cash.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash
      @cash = Cash.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cash_params
      params.require(:cash).permit(:total, :date_open, :date_close)
    end
end
