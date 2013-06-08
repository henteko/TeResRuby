# encoding: utf-8
require './bird'
require './tweet'

azuki_azusa = Bird.new('小豆梓')
tukiko = Bird.new('月子')
hentai = Bird.new('横寺')

azuki_azusa.tweet('なによいまさら！')
hentai.tweet('タンキニもいいけどさ、たまにはマイクロビキニも見たいよね！')
azuki_azusa.tweet('謝ったって遅いんだから')
tukiko.tweet('本当に先輩はどうしようもない変態さんですね')

azuki_azusa.follow(hentai)
azuki_azusa.follow(tukiko)
tukiko.follow(hentai)
tukiko.follow(azuki_azusa)

hentai.follow(tukiko)

tukiko.time_line
