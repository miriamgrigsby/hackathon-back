class RemoveAlertsFromCityWeather < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_weathers, :alert
    remove_column :city_weathers, :alert_description
  end
end
