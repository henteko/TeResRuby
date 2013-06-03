Rubyの環境設定

##brewインストール
ここを参考にする  
http://tools4hack.santalab.me/howto-mountainlion-install-homebrew.html

##rbenvインストール

```sh
$ brew install rbenv
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ brew install ruby-build
$ exit #=> 再起動する
$ rbenv install 1.9.3-p194
$ ruby -v
```
