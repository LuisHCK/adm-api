class HomeController < ApplicationController
	def index
		@sales_count = Sale.where(user_id: @current_user.id).count()
		@services_count = Service.where(user_id: @current_user.id).count()
		@cash = Cash.find_by(user_id: @current_user.id, date_close: nil)

		render json: {sales: @sales_count, services: @services_count, cash: @cash.total}
	end
end
