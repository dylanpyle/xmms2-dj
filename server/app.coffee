express = require 'express'

cli = require './cli'
controls = require './controls'
Playlist = require './playlist'

allowCrossDomain = (req, res, next) ->
  res.header 'Access-Control-Allow-Origin', '*'
  res.header 'Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE'
  res.header 'Access-Control-Allow-Headers', 'Content-Type'
  next()

app = express()
app.use allowCrossDomain

app.get '/playlist', (req, res) ->
  p = new Playlist
  cli.exec p.cmd(), (result) ->
    res.send p.parse result

app.post "/current/play", (req, res) ->
  controls.play()
  res.send 'Playing'

app.post "/current/pause", (req, res) ->
  controls.pause()
  res.send 'Paused'

app.post "/current/prev", (req, res) ->
  controls.prev()
  res.send 'Prev'

app.post "/current/next", (req, res) ->
  controls.next()
  res.send 'Next'

app.listen 3000
