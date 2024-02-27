# 特異メソッド

#new
# text = "hoge".encode("EUC-JP")
# no_option = String.new(text)
# no_option.encoding == text.encoding
# with_encoding = String.new(text, encoding: "UTF-8")
# with_encoding.encoding == Encoding::UTF_8
# with_capacity = String.new("test", encoding: "UTF-8", capacity: 100_000)

#try_convert
# String.try_convert("hoge")
# String.try_convert(/re/)

# インスタンスメソッド

#%
# p "i = %d" % 10
# p "i = %x" % 10
# p "i = %o" % 10
# p "i = %#d" % 10
# p "i = %#x" % 10
# p "i = %#o" % 10
# p "%d" % 10
# p "%d,%o" % [10, 10]

#*
# p "str" * 5
# str = "abc"
# p str * 4
# p str * 0
# p str

#+
# p "hot" + "dog"
# a = "hot"
# b = "dog"
# p a + b
# p a
# p b
# original_text = "hello"
# unfrozen_text = +original_text
# p original_text.frozen?
# p original_text == unfrozen_text
# p original_text.equal?(unfrozen_text)
# original_text = "hello".freeze
# unfrozen_text = +original_text
# p unfrozen_text.frozen?
# p original_text == unfrozen_text
# p original_text.equal?(unfrozen_text)

#-
# original_text = "hello"
# frozen_text = -original_text
# p frozen_text.frozen?
# p original_text == frozen_text
# p original_text.equal?(frozen_text)
# original_text = "hello".freeze
# frozen_text = -original_text
# p frozen_text.frozen?
# p original_text == frozen_text
# p original_text.equal?(frozen_text)

#<<
# str = "aaa"
# str << "bbb"
# p str
# str << 65
# p str

#<=>
# p "aaa" <=> "bbb"
# p "aaa" <=> "aaa"
# p "bbb" <=> "aaa"

#==, ===
# stringlike = Object.new
# def stringlike.==(other)
#   "string" == other
# end
# p "string" == stringlike
# def stringlike.to_str
#   raise
# end
# p "string" == stringlike

#=~
# p "string" =~ /str/
# p "string" =~ /not/
# p "string" =~ /ring/

#[]
# p "hello"[0]
# p "hello"[3]
# p "hello"[-1]
# str = "hello"
# p str[0, 2]
# p str[2, 2]
# substr = "hot"
# result = "hotdog"[substr]
# p result
# p "foobar"[/bar/]
# s = "FooBar"
# p s[/(?<foo>[A-Z]..)(?<bar>[A-Z]..)/]
# p s[/(?<foo>[A-Z]..)(?<bar>[A-Z]..)/, "foo"]
# p s[/(?<foo>[A-Z]..)(?<bar>[A-Z]..)/, "bar"]
# p "abcdefg"[1..3]
# p "abcdefg"[1...3]
# p "abcdefg"[3..-1]

#[]=
# str = "superman"
# str[-2] = "e"
# p str
# str[5, 3] = "woman"
# p str
# str["super"] = "bat"
# p str
# buf = "def exec(cmd)"
# buf[/def\s+(\w+)/, 1] = "preprocess"
# p buf
# buf[0..2] = "define"
# p buf

#ascii_only?
# p "".ascii_only?
# p "a4n2".ascii_only?
# p "あ".ascii_only?

#b
# p "hello".encoding
# p "hello".b.encoding

#byteindex
# p "foo".byteindex("f")
# p "foo".byteindex("oo")
# p "foo".byteindex("o", -1)
# p "foo".byteindex("o", -2)
# p "あいうえお".byteindex("う")       #日本語は3バイト文字
# p "あいうえお".byteindex("え", 3)

#byterindex
# 右から左に探す
# p "foo".byterindex("f")
# p "foo".byterindex("o")
# p "foo".byterindex(/o/)

#bytes
# p "hoge".bytes

#bytesize
# p "hoge".bytesize
# p "あいうえお".bytesize

#byteslice
# p "hello".byteslice(1)
# p "hello".byteslice(-1)
# p "あ".byteslice(0)
# p "あ".byteslice(1)
# p "hello".byteslice(1, 2)
# p "hello".byteslice(1..2)

#bytesplice
# p "hello".bytesplice(1, 2, "i")

#capitalize, capitalize!
# str = "hello"
# p str.capitalize
# p str
# p str.capitalize!
# p str

#casecmp
# p "aBcDeF".casecmp("abcde")
# p "aBcDeF".casecmp("abcdef")
# p "aBcDeF".casecmp("abcdefg")

#casecmp?
# p "aBcDe".casecmp?("abcde")
# p "aBcDe".casecmp?("abcdef")
# p "abcde".casecmp?("abcde")

#center
# str = "hello"
# p str.center(20)
# p str.center(20, "*")

#chars
# p "hello".chars

#chomp, chomp!
# str = "hello\n"
# p str
# p str.chomp
# p str
# p str.chomp!
# p str

#chop, chop!
# p "string\n".chop
# p "string".chop
# str = "string\n"
# p str.chop!
# p str.chop!
# p str

#chr
# p "hello".chr
# p "string".chr

#clear
# str = "hello"
# p str.clear
# p str

#codepoints
# p "hello わーるど".codepoints

#concat
# str = "hello"
# str.concat(" world")
# p str

#count
# p 'abcdefg'.count('c')
# p '123456789'.count('2378')
# p '123456789'.count('2-8', '^4-5')

#crypt
# p "hello".crypt("ab")
# p "hello".crypt("aa")

#dedup
# original_text = "text"
# frozen_text = original_text.dedup
# p frozen_text.frozen?
# p original_text == frozen_text
# p original_text.equal?(frozen_text)

#delete, delete!
# str = "123456789"
# p str.delete("2378")
# p str.delete("2-8", "^4-6")
# p str
# p str.delete!("2-8", "^4-6")
# p str

#delete_prefix, delete_prefix!
# str = "hello"
# p str.delete_prefix("he")
# p str.delete_prefix("hel")
# p str
# p str.delete_prefix!("hel")
# p str

#delete_suffix, delete_suffix!
# str = "hello"
# p str.delete_suffix("lo")
# p str.delete_suffix("llo")
# p str
# p str.delete_suffix!("llo")
# p str

#downcase, downcase!
# str = "HELLO"
# p str.downcase
# p str
# p str.downcase!
# p str

#dump
# p "abc\r\n\f\x00\b10\\\"".dump

#each_byte
# "str".each_byte do |byte|
#   p byte
# end

#each_char
# str = "string" 
# str.each_char do |char|
#   p char
# end

#each_codepoint
# p "hello わーるど".each_codepoint.to_a

#each_grapheme_cluster
# p "a\u0300".each_char.to_a
# p "a\u0300".each_grapheme_cluster.to_a

#each_line
# "aa\nbb\ncc\n".each_line do |line|
#   p line
# end

#empty?
# p "".empty?
# p "hello".empty?

#encode, encode!, encoding
# s = "いろは"
# p s.encode("EUC-JP").encoding
# p s.encode(Encoding::UTF_8).encoding
# p s.encoding
# p s.encode!("EUC-JP").encoding
# p s.encoding

#end_with?
# p "hello".end_with?("lo")
# p "hello".end_with?("ing")
# p "hello".end_with?("l", "o")

#eql?
# p "string".eql?("string")
# p "string".eql?("STRING")
# p "string".eql?("str" + "ing")

#force_encoding
# s = [164, 164, 164, 237, 164, 207].pack("C*")
# p s.encoding
# p s.force_encoding("EUC-JP").encoding
# p s.encoding

#getbyte
# str = "hello"
# p str.bytes
# p str.getbyte(0)
# p str.getbyte(1)

#grapheme_clusters
# p "a\u0300".grapheme_clusters

#gsub, gsub!
# p 'abcdefg'.gsub(/def/, '!!')
# p 'abcabc'.gsub(/b/, '<<\&>>')
# p 'xxbbxbb'.gsub(/x+(b+)/, 'X<<\1>>')
# p 'abcabc'.gsub(/[bc]/) {|s| s.upcase }
# p 'abcabc'.gsub(/[bc]/) { $&.upcase }
# hash = {'b'=>'B', 'c'=>'C'}
# p "abcabc".gsub(/[bc]/, hash)
# str = "hello"
# p str.gsub!(/l/, "L")
# p str

#hash
# p "hello".hash
# p "hello".hash == ("hel" + "lo").hash

#hex
# p "10".hex
# p "0x10".hex
# p "ff".hex
# p "xyz".hex
# p "".hex

#include?
# p "hello".include?("lo")
# p "hello".include?("ol")
# p "hello".include?("h")

#index
# p "hello".index("l")
# p "hello".index("o")
# p "foobarfoobar".index("bar", 6) 

#insert
# str = "foobaz"
# str.insert(3, "bar")
# p str

#inspect
# puts "hello".inspect
# p "hello".inspect

#intern
# p "foo".intern
# p "foo".intern.to_s == "foo"

#length
# p "hello".length
# p "string".length
# p "あいうえお".length

#lines
# p "aa\nbb\ncc\n".lines
# p "hello\nworld\n".lines(chomp: true)

#ljust
# p "hello".ljust(20)
# p "hello".ljust(20, "*")

#lstrip, lstrip!
# str = "  hello  "
# p str.lstrip
# p str
# p str.lstrip!
# p str

#match
# p 'hoge hige hege bar'.match('h.ge', 0)
# p 'hoge hige hege bar'.match('h.ge', 1)

#match?
# p "string".match?("str")
# p "string".match?("foo")
# p "string".match?(/str/)

#next, next!
# p "a".next
# p "z".next
# p "9".next
# p "a9".next
# p "z9".next
# str = "a"
# p str.next!
# p str

#oct
# p "10".oct
# p "010".oct
# p "0x10".oct
# p "1_0_1x".oct

#ord
# p "a".ord
# p "A".ord
# p "あ".ord
# p "あいうえお".ord

#partition
# p "hello".partition("l")
# p "hello".partition("x")
# p "hello".partition(/l/)

#prepend
# a = "world"
# a.prepend("hello ")
# p a
# a.prepend "world", "hello "
# p a

#replace
# str = "hello"
# str.replace("world")
# p str

#reverse, reverse!
# str = "hello"
# p str.reverse
# p str
# p str.reverse!
# p str

#rindex
# p "astrochemistry".rindex("str")
# p "character".rindex(?c)
# p "foobarfoobar".rindex("bar", 6)

#rjust
# p "hello".rjust(20)
# p "hello".rjust(20, "*")

#rpartition
# p "hello".rpartition("l")
# p "hello".rpartition("x")
# p "hello".rpartition(/l/)

#rstrip, rstrip!
# str = "  hello  "
# p str.rstrip
# p str
# p str.rstrip!
# p str

#scan
# p "foobar".scan(/../)
# p "foobarbazfoobarbaz".scan(/(ba)(.)/)
# p "foobarbazfoobarbaz".scan(/ba./)  # => ["bar", "baz", "bar", "baz"]
# "foobarbazfoobarbaz".scan(/(ba)(.)/) {|s| p s }

#scrub, scrub!
# str = "abc\u3042\x81"
# p str.scrub
# p str.scrub("*")
# p str.scrub!("*")
# p str

#setbyte
# s = "Sunday"
# s.setbyte(0, 77)
# s.setbyte(-5, 111)
# p s

#size
# p "test".size
# p "あいうえお".size

#slice, slice!
# str = "hello"
# p str.slice(1)
# p str.slice(1, 2)
# p str.slice!(1, 2)
# p str

#split
# p "   a \t  b \n  c".split(/\s+/)
# p "a,b,c,d,e".split(/,/, 1)
# p "a,b,c,d,e".split(/,/, 2)
# p "a,b,c,d,e".split(/,/, 3)
# p "a,b,c,d,e".split(/,/, 4)
# p "a,b,c,d,e".split(/,/, 5)
# p "a,b,c,d,e".split(/,/, 6)

#squeeze, squeeze!
# str = "112233445566778899"
# p str.squeeze 
# p str.squeeze("2-8")
# p str
# p str.squeeze!("2-8")
# p str

#start_with?
# p "string".start_with?("str")
# p "string".start_with?("ing")
# p "string".start_with?("s", "t")

#strip, strip!
# str = "  hello  "
# p str.strip
# p str
# p str.strip!
# p str

#sub, sub!
# p 'abcabc'.sub(/b/, '<<\&>>')
# p 'abcabc'.sub(/b/) {|s| s.upcase }
# hash = {'b'=>'B', 'c'=>'C'}
# p "abcabc".sub(/[bc]/, hash) 
# buf = "String-String"
# buf.sub!(/in./, "!!")
# p buf

#succ, succ!
# str = "aa"
# p str.succ
# p str
# p str.succ!
# p str

#sum
# p "hello".sum

#swapcase, swapcase!
# str = "HelLo"
# p str.swapcase
# p str
# p str.swapcase!
# p str

#to_c
# p '9'.to_c
# p '2.5'.to_c
# p '2.5/1'.to_c
# p '-3/2'.to_c
# p '-i'.to_c
# p '45i'.to_c
# p '3-4i'.to_c

#to_f
# p "-10".to_f
# p "10e2".to_f
# p "1e-2".to_f
# p ".1".to_f

#to_i
# p " 10".to_i
# p "+10".to_i
# p "-10".to_i

#to_r
# p '  2  '.to_r
# p '1/3'.to_r
# p '-9.2'.to_r
# p '-9.2E2'.to_r

#to_s, to_str
# p "str".to_s
# p "str".to_str

#to_sym
# p "foo".to_sym
# p "foo".to_sym.to_s == "foo"

#tr, tr!
# p "foo".tr('a-z', 'A-Z')
# p "ORYV".tr("A-Z", "D-ZA-C")
# str = "hello"
# p str.tr!("el", "ip")
# p str

#tr_s, tr_s!
# str = "goooooodbyyyyyye"
# p str.tr_s("o", "a")
# p str
# p str.tr_s!("o", "a")
# p str

#undump
# p "\"hello \\n ''\"".undump

#unicode_normalize, unicode_normalize!
# str = "a\u0300"
# p str.unicode_normalize(:nfc)
# p str
# p str.unicode_normalize!(:nfc)
# p str

#unicode_normalized?
# p "a\u0300".unicode_normalized?
# p "a\u0300".unicode_normalized?(:nfd)

#unpack
# p "abc".unpack("C*")

#unpack1
# p "abc".unpack1("C*")
# p "ABC".unpack1("C*")

#upcase, upcase!
# str = "hello"
# p str.upcase
# p str
# p str.upcase!
# p str

#upto
# 'a'.upto('za') do |str|
#   puts str
# end

#valid_encoding?
# p "\xc2\xa1".force_encoding("UTF-8").valid_encoding?
# p "\xc2".force_encoding("UTF-8").valid_encoding?