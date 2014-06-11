# Description:
#   色んなHIRO画像を表示する
#
# Author:
#   Rei-m

hiroList = [
  "http://www.ldh.co.jp/images/artist/musician/exile/img_pro_hiro2_fs.jpg",
  "http://img2.wikia.nocookie.net/__cb20100529123353/ttte/images/7/7c/HiroCGIpromo.png",
  "http://www.wakayamakanko.com/wp2/wp-content/uploads/2012/10/785a0a285c70a1b7dd383714c94c6fda.jpg",
  "http://fc05.deviantart.net/fs71/i/2013/355/3/9/hiro_nakamura_by_super_fan_wallpapers-d6yuezb.jpg",
  "http://hyororin.cocolog-nifty.com/photos/uncategorized/2012/09/17/hiro.jpg",
  "http://www2.airnet.ne.jp/yuichi/top.jpg",
  "http://xn--p8judl47af3swb2473bh05d.com/wp-content/uploads/2013/08/20130614-00000017-tospoweb-000-1-view.jpg",
  "http://pic.prepics-cdn.com/07909a30bada/9233305.jpeg"
]
hiroLength = hiroList.length

module.exports = (robot) ->
  robot.hear "hiro", (msg) ->
    msg.send hiroList[Math.floor Math.random() * hiroLength]
