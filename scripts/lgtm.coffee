# Description:
#   LGTMからランダムで画像を拾う
#
# Author:
#   Rei-m

client = require("cheerio-httpcli");

module.exports = (robot) ->
  robot.hear /lgtm|LGTM/, (msg) ->
    reqUrl = "http://www.lgtm.in/g"
    client.fetch reqUrl, {}, (err, $, res) ->
      msg.send $("#imageUrl").val()
