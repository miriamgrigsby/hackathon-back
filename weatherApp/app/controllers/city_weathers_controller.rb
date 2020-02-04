class CityWeathersController < ApplicationController
    def index
        @cityweather = CityWeather.all
        render json: @cityweather
    end 
end
