# Description:
#   tiqavから画像を拾う
#
# Author:
#   Rei-m

client = require("cheerio-httpcli");

module.exports = (robot) ->
  robot.hear /ちくわ/, (msg) ->
    client.fetch 'http://tiqav.com', {}, (err, $, res) ->
      imgs = $("body").find("img")
      lenImg = imgs.length
      idx = Math.floor Math.random() * lenImg;
      msg.send $("body").find("img").eq(idx).attr("src")

