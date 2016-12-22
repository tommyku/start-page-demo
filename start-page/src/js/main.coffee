$ = require 'cash-dom'
require '../css/app.scss'
WeatherPanel = require './weather_panel.js.coffee'
DateTimePanel = require './date_time_panel.js.coffee'
#DoomsDayPanel = require './dooms_day_panel.js.coffee'
#Wallpaper = require './wallpaper.js.coffee'

$ ->
  #(new Wallpaper()).bootstrap()
  (new WeatherPanel()).bootstrap()
  (new DateTimePanel()).bootstrap()
  #(new DoomsDayPanel()).bootstrap()
