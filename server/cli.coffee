spawn = require('child_process').spawn

class CLI
  exec: (cmd, cb, error) ->
    cmd = spawn 'xmms2', cmd.split ' '

    stdout = ''
    stderr = ''
    cmd.stdout.on 'data', (data) -> stdout += data
    cmd.stderr.on 'data', (data) -> stderr += data

    cmd.on 'close', (code) ->
      return error?(stderr) if stderr
      cb? stdout.split('\n'), code

module.exports = new CLI
