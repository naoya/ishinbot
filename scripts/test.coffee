# Description:
#  test
#
# Commnds:
#  hubot test  <msg> - <msg> respond
#  hubot test2 <msg> - <msg>2 respond
#
# Examples:
#  hubot test hoge
#  hubot test2 hoge

module.exports = (robot) ->
  robot.respond /test (.*)/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /test2 (.*)/i, (msg) ->
    msg.send msg.match[1] + "2"

