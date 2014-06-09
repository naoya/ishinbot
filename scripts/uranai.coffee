random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->
  robot.respond /今日の運勢/i, (msg) ->
    fortunes = [
      '大吉',
      '中吉',
      '末吉',
      '大凶'
    ]
    result = fortunes[random(4)]
    msg.send "今日の運勢: #{result}"
