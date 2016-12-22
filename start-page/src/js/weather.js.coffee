request = require 'superagent'

module.exports = {
  getWeather: ()->
    request.get('http://0.0.0.0:1080/weather')

  getWeatherIcon: (icon)->
    return icon = 'clear' if icon.match /clear/
    return icon = 'snow' if icon.match /sleet|snow/
    return icon = 'rain' if icon.match /rain/
    return icon = 'cloudy' if icon.match /cloudy/
    return icon = 'fog' if icon.match /fog/
    return icon = 'wind' if icon.match /wind/
    icon
}
