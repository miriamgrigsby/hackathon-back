class CityWeather < ApplicationRecord
  belongs_to :city
  belongs_to :weather
end
