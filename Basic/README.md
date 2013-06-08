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
  #0 ~ 9まで表示
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

```ruby
#Ruby3
(0..9).each do |i|
  puts i
end
```

##関数の書き方

```c
int hoge(int num) {
  printf("%d\n", num);
}

int main() {
  //10が表示される
  hoge(10);
}
```

```ruby
def hoge(num)
  puts num
end

hoge(10) #=> 10が表示される
```

##ちょっと演習
###与えた値までのΣ計算をする関数を作ってみよう
Cだとこんなん  

```c
#include<stdio.h>

int sum(num) {
  if(num == 1) return num;
  return num + sum(num - 1);
}

int main() {
  printf("%d\n", sum(10));
  return 0;
}
```
