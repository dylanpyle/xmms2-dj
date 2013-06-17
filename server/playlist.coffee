Parsed = require './parsed'

class Playlist extends Parsed
  cmd: ->
    if @name then "list #{@name}" else 'list'

  parse: (lines) ->
    songs = lines.slice(0, -3).map (l) ->
      songinfo = l.match(/^..\[.*\] (.*) \(.*\)$/)[1].split(' - ')

      {
        playing: l.slice(0,2) == '->'
        track: l.match(/^..\[(.*)\/.*\]/)[1]
        artist: songinfo[0]
        title: songinfo[1]
        duration: l.match(/\((.*)\)$/)[1]
      }

    {
      name: @name || 'Current'
      songs
    }

module.exports = Playlist
