# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CityWeather.destroy_all
Weather.destroy_all
City.destroy_all

denver = City.create(name: "Denver", state: "CO", Latitude: 39.7392, Longitude:-104.9903 )
boston = City.create(name: "Boston", state: "MA",Latitude:42.3601 , Longitude:-71.0589 )
new_york = City.create(name: "New York City", state: "NY",Latitude: 40.7128, Longitude: -74.0060)
san_francisco = City.create(name: "San Francisco", state: "CA",Latitude: 37.7749, Longitude: -122.4194)
phoenix = City.create(name: "Phoenix", state: "AZ",Latitude: 33.4484, Longitude: -112.074 )
houston = City.create(name: "Houston", state: "TX",Latitude: 29.7604, Longitude: -95.3698)
philadelphia = City.create(name: "Philadelphia", state: "PA",Latitude: 39.9526, Longitude: -75.1652)
# jacksonville = City.create(name: "Jacksonville", state: "FL",Latitude: 30.3322, Longitude: -81.6557)
miami = City.create(name: "Miami", state: "FL",Latitude: 25.7617, Longitude: -80.1918)
seattle = City.create(name: "Seattle", state: "WA",Latitude: 47.6062, Longitude: -122.3321)



clearDay = Weather.create(icon: "clear-day")





CityWeather.create(summary: "Clear", temperature: 28.6, windspeed: 3.77, windgust: 7.44, daily_summary: "Clear throughout the day.",city: denver, weather: clearDay)



City.all.each do |city| 
   other_response = RestClient.get("https://api.darksky.net/forecast/40f9e66fc63a6dc88815a92eb370d3c6/#{city.Latitude},#{city.Longitude}")
   results = JSON.parse(other_response)
  weather_icon = Weather.find_or_create_by(
       icon: results["currently"]["icon"]
   )
   CityWeather.create(
       summary: results["currently"]["summary"],
       temperature: results["currently"]["temperature"],
       windspeed: results["currently"]["windSpeed"],
       windgust: results["currently"]["windGust"],
       daily_summary: results["daily"]["summary"],
       city: city,
       weather: weather_icon
   )
end 
