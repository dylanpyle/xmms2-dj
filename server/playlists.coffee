Parsed = require './parsed'

class Playlists extends Parsed
  cmd: 'playlist list'

  parse: (lines) ->
    lines.map (l) ->
      current: l[0] == '*'
      title: l.match(/. (.*)$/)[1]

module.exports = Playlists
