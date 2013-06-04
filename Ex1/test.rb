require './bird'
require './tweet'

henteko = Bird.new('henteko')
henteko2 = Bird.new('henteko2')

henteko.tweet("hoge")
henteko2.tweet("test")

henteko.follow(henteko2)
henteko.flowers

henteko.time_line
