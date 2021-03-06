$       = require 'cash-dom'
store   = require 'store'
weather = require './weather.js.coffee'

class WeatherPanel
  lo: (temperature)->
    Math.round(parseFloat(@report.temperature, 10)).toString()

  updatePage: ->
    return unless @report?
    $('.temperature').html "#{@lo @report.temperature}&deg;"
    $('.summary').html @report.current_summary
    $('.weather-icon').prop src: "static/weatherIcons/#{@report.icon}.png"

  getWeatherHandler: (err, res)->
    return unless res? && res.body.currently?
    current = res.body.currently
    @report =
      icon: weather.getWeatherIcon(current.icon)
      current_summary: current.summary
      temperature: current.temperature
      hour_summary: res.body.hourly.summary
    store.set 'weather.report', @report
    @updatePage()

  bootstrap: ->
    weather.getWeather().end (err, res)=>
      @getWeatherHandler(err, res)
    @report = store.get 'weather.report'
    @updatePage()

module.exports = WeatherPanel
