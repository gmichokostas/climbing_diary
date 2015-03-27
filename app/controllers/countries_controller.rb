class CountriesController < ApplicationController

  def show
    @country = Country.find params[:id]
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find params[:id]
  end

  def update
    @country = Country.find params[:id]
    if @country.update country_params
      @update = true
      flash[:notice] = "Country succesfully updated"
      render 'show', locals: {country: @country, update: @update}
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find params[:id]
    @country.destroy
    redirect_to countries_path
  end

  def create
    country_name = params.fetch(:country)[:name].capitalize
    @country = Country.find_by(name: country_name)
    if @country
      flash[:notice] = "Country exists"
      render 'show', locals: {country: @country, update: false}
    else
      @country = Country.create country_params
      if @country.save
        flash[:notice] = "Country succesfully added"
        render 'show', locals: {country: @country, update: false}
      else
        render :new
      end
    end
  end

  def index
    @countries = Country.all
  end

  private

  def country_params
    params.require(:country).permit(:name)
  end

end
