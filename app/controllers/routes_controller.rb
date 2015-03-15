class RoutesController < ApplicationController
	
	def index
		@routes = Route.all
	end
	def show
		@route = Route.find params[:id]
	end

	def new
	end


	def create
		@route = Route.new route_params
		@route.save
		redirect_to @route
		#render plain: params[:route].inspect
	end

	private

	def route_params
		params.require(:route).permit(:route_name, :route_grade, :description, :date)
	end

end
