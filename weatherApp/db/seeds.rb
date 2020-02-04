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

denver = City.create(name: "Denver", state: "CO")

clearDay = Weather.create(icon: "clear-day")

CityWeather.create(summary: "Clear", temperature: 28.6, windspeed: 3.77, windgust: 7.44, daily_summary: "Clear throughout the day.", alert: "FLOOD WATCH FOR DENVER, CO", alert_description: "FLOOD WATCH REMAINS IN EFFECT THROUGH LATE MONDAY NIGHT", city: denver, weather: clearDay)