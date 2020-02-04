class City < ApplicationRecord
    has_many :city_weathers
    has_many :weathers, through: :city_weathers
end
