class AddColumnsToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :Latitude, :float
    add_column :cities, :Longitude, :float
  end
end
