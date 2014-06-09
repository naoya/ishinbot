# Description:
#  test
#
# Commnds:
#  hubot test <msg> - test message respond
#
# Examples:
#  hubot test hoge

module.exports = (robot) ->
  robot.respond /test (.*)/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /test2 (.*)/i, (msg) ->
    msg.send msg.match[1] + "2"

