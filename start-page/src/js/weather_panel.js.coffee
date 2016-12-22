$       = require 'cash-dom'
store   = require 'store'
weather = require './weather.js.coffee'

class WeatherPanel
  updatePage: ->
    console.debug @report

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

module.exports = WeatherPanel
