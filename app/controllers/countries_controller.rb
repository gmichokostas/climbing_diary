class CountriesController < ApplicationController

	def index
		@country_names = []
		@countries = Country.all
		@countries.each { |country| @country_names << country.country_name }
		@country_names = @country_names.uniq
	end

end
