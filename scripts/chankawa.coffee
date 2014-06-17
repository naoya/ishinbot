# Description:
#   チャンカワ|ちゃんかわで「気をつけなはれや」を表示する
#
# Author:
#   Rei-m

module.exports = (robot) ->
  robot.hear /チャンカワ|ちゃんかわ/, (msg) ->
    msg.send "https://s3-ap-northeast-1.amazonaws.com/uploads-jp.hipchat.com/91954/753630/kEeKgzb8c4h14DZ/tyannkawa.jpg"
