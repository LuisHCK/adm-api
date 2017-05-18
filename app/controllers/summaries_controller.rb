class SummariesController < ApplicationController
  before_action :set_summary, only: [:show, :update, :destroy]

  # GET /summaries
  def index
    @summaries = Summary.where(user_id: @current_user.id)

    render json: @summaries
  end

  # GET /summaries/1
  def show
    render json: @summary
  end

  # POST /summaries
  def create
    @summary = Summary.new(summary_params)
    @summary.user_id = @current_user.id

    if @summary.save
      render json: @summary, status: :created, location: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /summaries/1
  def update
    if @summary.update(summary_params)
      render json: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /summaries/1
  def destroy
    @summary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summary
      @summary = Summary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def summary_params
      params.require(:summary).permit(:sales, :services, :cash, :unpaid_bills, :bills_paid, :employees)
    end
end
