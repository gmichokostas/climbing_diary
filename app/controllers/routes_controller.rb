class RoutesController < ApplicationController

	def index
		@routes = Route.all
	end
	def show
		@route = Route.find params[:id]
	end

	def new
		@route = Route.new
		@route.build_area
		@route.build_crag
		@route.build_country
	end

	def create
		@route = Route.new route_params

		if @route.save
			flash[:notice] = "Route succesfully added"
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

		if @route.update_attributes(route_params)
			flash[:notice] = "Route succesfully updated"
			redirect_to @route
		else
			render :edit
		end

	end

	private

	def route_params
		params.require(:route).permit(:route_name, :route_grade, :description, :date,
																	area_attributes: [:area_name, :id,  _destroy: '1'],
																	crag_attributes: [:crag_name, :id, _destroy: '1'],
																	country_attributes: [:country_name, :id, _destroy: '1'])
	end

end
