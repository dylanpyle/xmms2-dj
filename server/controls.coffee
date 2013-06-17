cli = require './cli'

class Controls
  play: -> cli.exec 'play'
  pause: -> cli.exec 'pause'
  toggle: -> cli.exec 'toggle'
  prev: -> cli.exec 'prev'
  next: -> cli.exec 'next'
  seek: (seconds) -> cli.exec "seek #{seconds}"
  jump: ->

module.exports = new Controls
