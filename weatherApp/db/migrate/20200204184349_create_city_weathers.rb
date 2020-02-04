class CreateCityWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :city_weathers do |t|
      t.string :summary
      t.float :temperature
      t.float :windgust
      t.float :windspeed
      t.string :daily_summary
      t.string :alert
      t.text :alert_description
      t.references :city, null: false, foreign_key: true
      t.references :weather, null: false, foreign_key: true

      t.timestamps
    end
  end
end
