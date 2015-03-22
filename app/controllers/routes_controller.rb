class RoutesController < ApplicationController

	def create
		@country = Country.find params[:country_id]
		@route = @country.routes.create route_params
		flash[:notice] = "Route succesfully added"
		render 'routes/show', locals: {route: @route, country: @country}
	end

	private

	def route_params
		params.require(:route).permit(:name, :grade, :description, :date, :area, :crag)
	end

end
