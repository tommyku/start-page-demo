$ = require 'cash-dom'

class WallpaperPanel
  is_day: ->
    !@is_night()

  is_night: ->
    now_hour = (new Date()).getHours() 
    now_hour < 6 || now_hour > 18

  bodyStyle: ->
    {
      backgroundColor: if @is_day() then 'white' else 'black'
      color: if @is_day() then 'black' else 'white'
    }

  bootstrap: ->
    $('body').css @bodyStyle()

module.exports = WallpaperPanel
