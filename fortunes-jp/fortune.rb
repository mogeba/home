#!/data/data/com.termux/files/usr/bin/ruby
#
# utility of collecting data for fortune(man6)
#   1. collects data from http://kotodama.in  (Japanese)
#   2. merges existng data
#
# I inspired and refferred to
#   http://qiita.com/Hiroki_lzh/2579c93bdc9ed76ac1f2
#
# usage
#
#   when you want newest fortune data from http://kotodama.in/
#     $ ./fortune.rb > kotodama.fortune   # push Ctrl-D
#
#   when you want fortune data merged goethe.fortune and kotodama.fortune
#   (and newest fortune data from http://kotodama.in)
#     $ ./fortune.rb goethe.fortune kotodama.fortune > merged.fortune

require 'rss'

sep  = "%#{$/}"
tail = "#{$/}#{sep}"

already = ARGF.readlines(sep)
already = already.map do |str|
  if str[-tail.length .. -1] == tail
    str[0 ... -tail.length].chomp
  else
    str.chomp
  end
end
#already.each do |str| puts "#{str.length} #{str}" end

kotodama_newest  = Array.new
rss = RSS::Parser.parse("http://www.kotodama.in/bbs/rss/board/remark/", false)
rss.items.each do |item|
  kotodama_newest.push "#{item.title.chomp}(#{item.content_encoded.chomp})"
end
#newest.each do |str| puts "#{str.length} #{str}" end

merged = already | kotodama_newest
#merged.each do |str| puts "#{str.length} #{str}" end

first = true
merged.each do |str|
  if first then first = false else puts "%" end
  puts str
end

STDERR.puts "stderr: kotodama_newest #{kotodama_newest.length}"
STDERR.puts "stderr: merged          #{merged.length} = #{already.length} + #{merged.length - already.length}"
