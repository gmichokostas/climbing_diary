class RoutesController < ApplicationController

	def index
		@routes = Route.all
	end

	def show
		@route = Route.find params[:id]
		@country = Country.find @route.country_id
	end

	def edit
		@route = Route.find params[:id]
	end

	def update
		@route = Route.find params[:id]
		if @route.update route_params
			redirect_to @route
		else
			render :edit
		end
	end

	def create
		@country = Country.find params[:country_id]
		@route = @country.routes.create route_params
		flash[:notice] = "Route succesfully added"
		render 'routes/show', locals: {route: @route, country: @country}
	end

	def destroy
		@route = Route.find params[:id]
		@route.destroy
		redirect_to routes_path
	end

	private

	def route_params
		params.require(:route).permit(:name, :grade, :description, :date, :area, :crag)
	end

end
