$ = require 'cash-dom'

class WallpaperPanel
  wallpapers: [
    '1.jpg'
    '2.jpg'
    '3.jpg'
    '4.jpg'
    '5.jpg'
    '6.jpg'
    '7.jpg'
    'ParkOfTheMonsters_EN-US9644141769_1920x1200.jpg'
    'ResurrectionBay_EN-US9938760197_1920x1200.jpg'
    'RicePaddyVideo_EN-US9637810719_1920x1200.jpg'
    'SachsischeSchweiz_EN-US11350891933_1920x1200.jpg'
  ]

  is_day: ->
    !@is_night()

  is_night: ->
    now_hour = (new Date()).getHours() 
    now_hour < 6 || now_hour > 18

  bodyStyle: ->
    {
      backgroundColor: if @is_day() then 'white' else 'black'
      color: 'white'
      backgroundImage: "url('./static/#{@wallpapers[Math.floor(Math.random()*@wallpapers.length)]}')"
    }

  bootstrap: ->
    console.dir @bodyStyle()
    $('body').css @bodyStyle()

module.exports = WallpaperPanel
