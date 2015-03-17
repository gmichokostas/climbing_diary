class RoutesController < ApplicationController

	def index
		@routes = Route.all
	end
	def show
		@route = Route.find params[:id]
	end

	def new
		@route = Route.new
	end

	def create
		@route = Route.new route_params

		if @route.save
			redirect_to @route
		else
			render :new
		end

	end

	def destroy
		@route = Route.find params[:id]
		@route.destroy

		redirect_to routes_path
	end

	def edit
		@route = Route.find params[:id]
	end

	def update
		@route = Route.find params[:id]

		if @route.update(route_params)
			redirect_to @route
		else
			render :edit
		end

	end

	private

	def route_params
		params.require(:route).permit(:route_name, :route_grade, :description, :date,
																	area_attributes: [:area_name, :_destroy],
																	crag_attributes: [:crag_name, :_destroy],
																	country_attributes: [:country_name, :_destroy])
	end

end
