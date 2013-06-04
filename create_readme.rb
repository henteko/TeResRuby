# encoding: utf-8
require 'find'

BASE_URL = 'https://github.com/henteko/TeResRuby'
FILE_NAME = 'README.md'

readme_text = <<"EOS"
TeResRubyもくじ

##目次
EOS

#読み出し
Find.find('./') do |file|
  if mat = file.match(/\.\/(\w+)\/#{FILE_NAME}/)
    title = ""
    open(file) do |f|
      title = f.readlines[0].chomp
    end
    dir_name = mat[1]
    readme_text += "\n* [#{title}](#{BASE_URL}/tree/master/#{dir_name})"
  end
end

#書き込み
readme = File.open("./README.md", 'w')
readme.puts readme_text
readme.close
