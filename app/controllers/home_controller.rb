class HomeController < ApplicationController
	def index
		total = 0
		@sales_count = Sale.where(user_id: @current_user.id).count()
		@services_count = Service.where(user_id: @current_user.id).count()
		@cash = Cash.find_by(user_id: @current_user.id, date_close: nil)
		
		#Check cash
		if @cash
			total = @cash.total
		end


		render json: {sales: @sales_count, services: @services_count, cash: total}
	end
end
