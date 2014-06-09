# Description:
#   tiqavから画像を拾う
#
# Author:
#   Rei-m

client = require("cheerio-httpcli");

module.exports = (robot) ->
  robot.hear /ちくわ/, (msg) ->
    inputTxt = msg.match.input
    inputTxt.split("　").join(" ")
    aryInput = inputTxt.split(" ")
    reqUrl = "http://tiqav.com"
    if 1 < aryInput.length
      reqUrl+="/search/"+aryInput[1]

    client.fetch reqUrl, {}, (err, $, res) ->
      imgs = $("body").find(".box")
      lenImg = imgs.length
      idx = Math.floor Math.random() * lenImg;
      msg.send imgs.eq(idx).find("img").attr("src")



