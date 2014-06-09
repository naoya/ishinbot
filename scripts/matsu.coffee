# Description:
#   ぬるぽ、ガッ
#
# Author:
#   naoya

module.exports = (robot) ->
  robot.hear /あいさつ/, (msg) ->
    msg.send "Welcome Hubot !!"
