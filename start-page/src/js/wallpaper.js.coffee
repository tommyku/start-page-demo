$ = require 'cash-dom'

class WallpaperPanel
  wallpapers: [
    "http://a.desktopprassets.com/wallpapers/c35d8b489af038c55e236f663cc0d640af4b3afd/fuzz_006.jpg"
    "http://a.desktopprassets.com/wallpapers/769c98a138091ca81dfe327c6514ea1a6179a411/desktop_background__1669_.jpg"
    "http://a.desktopprassets.com/wallpapers/e3f299d7793814d2f72dfd0c6c68e1c77fee360b/bridge_over_nakajima-gawa__nagasaki__1870s.jpg"
    "http://a.desktopprassets.com/wallpapers/e601c906795e63fdd7d09c2f1f5f4242eb1b3fe6/wallpaperhd_052.jpg"
    "http://a.desktopprassets.com/wallpapers/b493fbc2a822e963823c945061f609998a90db5a/022-023_akira.jpg"
    "http://a.desktopprassets.com/wallpapers/12d828e27e639a5e64bc1c0e9ba772beafb70df5/wallpaper_witch_doctor_1920x1200.jpg"
    "http://a.desktopprassets.com/wallpapers/0aeefc23db4a7f481c96a8a77d369d7562b82c3f/436021.jpg"
    "http://a.desktopprassets.com/wallpapers/59011373a94a04260205337bc4cbf41e5c3686fc/wallpaper-1912299.jpeg"
    "http://a.desktopprassets.com/wallpapers/a8c55de04bb42f5fbd920f7a7bb7c503cc18cc75/teruhime_matsuri_parade_8844.jpg"
    "http://a.desktopprassets.com/wallpapers/87c9e76236a87a697055628b88a26fe50366fe71/1255581787325.jpg"
    "http://a.desktopprassets.com/wallpapers/0f8e877e037c51f87ebd20156dfb8e8e4f4e2f0d/the_weeping_angels_by_dv8r71-d2ysjwf.jpeg"
    "http://a.desktopprassets.com/wallpapers/5294bedd45b5a15ab8ac0f147c325f130b9584e9/synthestructure32880.jpg"
    "http://a.desktopprassets.com/wallpapers/e58425217b6d83bfe79224a56ed2807c2ff02d1d/wallpaper-2466267.jpg"
    "http://a.desktopprassets.com/wallpapers/ed05ad85ebf9e7f1f23fa9f03a0cc14bd5d0c209/wallpaper-239092.jpg"
    "http://a.desktopprassets.com/wallpapers/b9bb8b78469cc25540c161041eb33f0a628a57af/homeworld_desktop_1280x800_wallpaper-276910.jpg"
    "http://a.desktopprassets.com/wallpapers/c6cdf1cc2f494672973bd5cc78d3f10bda6a9301/02029_venetianroads_1280x800.jpg"
    "http://a.desktopprassets.com/wallpapers/221cb9072a3810c1e3249e386f56330e750a760b/cultlogic.png"
    "http://a.desktopprassets.com/wallpapers/7bef19a80de7e5183b8fa27e8883bead61ca7f12/victory_of_the_daleks_by_dv8r71.jpeg"
    "http://a.desktopprassets.com/wallpapers/cea63f826c77aac8c3e17ef63b31890a6e874306/austrip2013oct-1-106.jpg"
    "http://a.desktopprassets.com/wallpapers/d0d136d062fdb5d2037c81c570d0d390a8dfb853/star_wars_lego_-_atat_2.jpg"
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
      backgroundImage: "url(#{@wallpapers[Math.floor(Math.random()*@wallpapers.length)]})"
    }

  bootstrap: ->
    $('body').css @bodyStyle()

module.exports = WallpaperPanel
