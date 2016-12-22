$ = require 'cash-dom'

class DateTimePanel
  WEEKDAYS: [
    'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'
  ]
  MONTHS: [
    'JUN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP',
    'OCT', 'NOV', 'DEC'
  ]

  constructor: ->
    @now = new Date

  lo: (t)->
    if t < 10 then "0#{t}" else t

  z: (h)->
    if h < 12 then 'AM' else 'PM'

  bootstrap: ->
    timeString =
      "#{@lo @now.getHours()}:#{@lo @now.getMinutes()} #{@z @now.getHours()}"
    dateString = [
      "#{@WEEKDAYS[@now.getDay()]} #{@lo @now.getDate()} "
      "#{@MONTHS[@now.getMonth()]} #{@now.getFullYear()}" ].join('')
    $('time.time').html timeString
    $('time.date').html dateString

module.exports = DateTimePanel
