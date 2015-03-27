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

  def new
    @country = Country.find params[:country_id]
    @route = Route.new
  end

  def update
    @route = Route.find params[:id]
    if @route.update route_params
      redirect_to @route
    else
      render :new
    end
  end

  def create
    @country = Country.find params[:country_id]
    @route = @country.routes.create route_params
    if @route.save
      flash[:notice] = "Route succesfully added"
      redirect_to route_path(@route)
    else
      render 'countries/show', locals: {country: @country, update: false}
    end
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
