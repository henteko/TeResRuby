Ex1: オブジェクト指向

##オブジェクトとは
各パーツのこと  
車だと以下のオブジェクトがそれぞれ機能してる  

* タイヤ
* 扉
* エンジン
* etc

例:

```ruby
class Tire
  #コンストラクタ
  def initialize(name)
    @name = name
  end
  def run
    #ここにタイヤが走る処理を書く
    puts @name + " run!!!"
  end
end

tire1 = Tire.new("tire1")
tire2 = Tire.new("tire2")
tire3 = Tire.new("tire3")
tire4 = Tire.new("tire4")

tire1.run
tire2.run
tire3.run
tire4.run
```

###コンストラクタとは
クラスをnewする際に事前に値を渡して、そのオブジェクト唯一の値を保持することができる  
上の例ではタイヤごとにnameを保持して、それぞれ別の名前をつけることが出来る  

##Rubyでのオブジェクト
Rubyでは全てがオブジェクト  
というか全てがクラスに属している  
定数(ここでは10)でもFixnumというクラスに属しているので、Fixnumが持っているメソッドを実行出来る(例: to_s)

```ruby
num = 10
puts num.class #=> Fixnum
puts 10.class #=> Fixnum

str = num.to_s
puts str.class #=> String

#こんなことも出来る
puts num.to_s.class #=> String
puts 10.to_s.class #=> String
```

##実際にやってみよう
Twitterもどきを作ってみよう  
仕様は以下  

* 名前が登録出来る
* つぶやける
* 自分のつぶやき一覧を出力出来る
* 別アカウントをフォロー出来る
* タイムラインを出力出来る

###出来たら独自機能を付けてみよう
例:  

* フォローを外せる
* ふぁぼれる
* あんふぁぼ出来る
* ふぁぼ一覧が出力出来る
* etc

```ruby
#BirdとTweetというクラスを作成してのテスト
require './bird' #=> ./bird.rbを読み込む
require './tweet' #=> ./tweet.rbを読み込む

#ユーザー作成
henteko = Bird.new('henteko')
henteko2 = Bird.new('henteko2')

#それぞれでつぶやく
henteko.tweet("hoge")
henteko2.tweet("test")

#hentekoがhenteko2をフォローする
henteko.follow(henteko2)

#フォロワー一覧を出力
henteko.flowers #=> henteko2

#タイムラインを出力する
henteko.time_line #=> hoge test
```