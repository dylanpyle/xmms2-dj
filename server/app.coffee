cli = require './cli'
controls = require './controls'
Playlist = require './playlist'

p = new Playlist
cli.exec p.cmd(), (result) ->
  data = p.parse result
  console.log data

controls.toggle()
