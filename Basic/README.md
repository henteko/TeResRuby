Ruby基本

##Rubyとは
超スタイリッシュに書けるいい感じの言語  
開発者が日本人だから日本語のドキュメント多め  
Twitterとか昔はRubyで作られたらしいね  

##Rubyで何が出来るんよ
何でも出来るよ！！  
何が出来ないのかわかんないけど、まぁやろうと思えばなんでも出来るのでは

##Ruby基本構文
C言語 -> Rubyの順番で説明したいね  

###制御構文的なの  

```c
//C言語
int flag = 1;
if(flag) {
  printf("hello\n");
}else if(1){
  printf("not display\n");
}else {
  printf("not display\n");
}
```

```ruby
#Ruby
flag = true
if flag
  puts "hello"
elsif true
  puts "not display"
else
  puts "not display"
end
```

###繰り返し構文

```c
//C言語
for(int i=0; i < 10; i++) {
  printf("%d\n", i);
}
```

```ruby
#Ruby
num = 10
num.times do |i|
  puts i
end
```

```ruby
#Ruby2
array = [0,1,2,3,4,5,6,7,8,9]
array.each do |i|
  puts i
end
```

##クラスの書き方
C言語ではクラスとか無いね  

```ruby
#Ruby
class Hoge #=> クラス定義
  def print(str) #=> メソッド定義(C言語での関数)
    puts str
  end
end

hoge = Hoge.new #=> クラスを使用するよ
hoge.print("hello") #=> printっていうメソッドを使うよ
```

##ライブラリを使ってみよう
Rubyには便利なライブラリがいっぱいあるよ  
http://rubygems.com にいっぱいあるよ  

###インストール方法

```sh
#ターミナルで以下実行
$ gem install ライブラリのパッケージ名
```

###使ってみよう

```ruby
# Rubyのソースコードの一番上にこれを書く
require 'ライブラリの名前' #=> C言語のincludeだね
```

###実際にやってみよう(電通大の休講情報取得)

```sh
# 以下をターミナルで実行
$ gem install uec_express_api
```

```ruby
#Ruby
require 'uec_express_api'
require 'json'

uec_express = UECExpressApi.new()
uec_express.to_s
pp uec_express.to_hash
```

これで電通大の休講情報が取得出来た！！

###後は思い思いの休講情報にしてみよう！！
例  

* 自分が関係してる授業のみ表示してみるとか
* 休みにしたい授業を毎回表示するとか
