module.exports = (robot) ->
  robot.hear /Hello/i, (msg) ->
    msg.send "Hello,world"
