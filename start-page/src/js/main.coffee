$ = require 'cash-dom'
require '../css/app.scss'
WeatherPanel = require './weather_panel.js.coffee'
DateTimePanel = require './date_time_panel.js.coffee'
Wallpaper = require './wallpaper.js.coffee'

unMask = ->
  $('.mask').css 'opacity', 0

$ ->
  (new Wallpaper()).bootstrap()
  (new WeatherPanel()).bootstrap()
  (new DateTimePanel()).bootstrap()
  unMask()
