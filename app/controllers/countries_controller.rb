class CountriesController < ApplicationController

	def show
		@country = Country.find params[:id]
	end


	def new
		@country = Country.new
	end

	def create
		@country = Country.create country_params

		if @country.save
			flash[:notice] = "Country succesfully added"
			redirect_to @country
		else
			render :new
		end

	end

	def index
		@country_names = []
		@countries = Country.all
		@countries.each { |country| @country_names << country.name }
		@country_names = @country_names.uniq
	end

	private

	def country_params
		params.require(:country).permit(:name)
  end

end
