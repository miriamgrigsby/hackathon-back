class Weather < ApplicationRecord
    has_many :city_weathers
    has_many :cities, through: :city_weathers
end
