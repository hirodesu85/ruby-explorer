# 特異メソッド

#[]
# p Array[1, 2, 3]

#new
# ary = Array.new(3, "foo")
# p ary
# ary[0].upcase!
# p ary
# a = ["a", "b", "c"]
# b = Array.new(a)
# a.each { |e| e.upcase! }
# p a
# p b
# ary = Array.new(3){|index| "hoge#{index}"}
# p ary
# ary = Array.new(3){ "foo" }
# p ary
# ary[0].capitalize!
# p ary             

#try_convert
# p Array.try_convert([1])
# p Array.try_convert("1")

# インスタンスメソッド

#&
# p [1, 1, 2, 3] & [3, 1, 4]

#*
# p [1, 2, 3] * 3
# p [1, 2, 3] * ","

#+
# a = [1, 2, 3]
# b = [4, 5, 6]
# p a + b

#-
# p [1, 2, 1, 3, 1, 4] - [4, 2]
# p [1, 2, 1, 3, 1, 4] - [1, 4]

#<<
# ary = [1]
# ary << 2 << 3 << 4
# p ary

#<=>
# p [1, 2, 3] <=> [1, 2, 3]
# p [1, 2, 3] <=> [1, 2, 4]
# p [1, 2, 3] <=> [1, 2, 2]
# p [1, 2, 3] <=> [1, 2, 3, 4]

#==
# p [1, 2, 3] == [1, 2, 3]
# p [1, 2, 3] == [1, 2, 4]
# p [1, 2, 3] == [1, 2, 2]
# p [1, 2, 3] == [1, 2, 3, 4]

#[]
# ary = [1, 2, 3]
# p ary[0]
# p ary[1]
# p ary[2]
# p ary[-1]
# p ary[1..2]
# p ary[1, 2]

#[]=
# a = [0, 1, 2, 3, 4, 5]
# a[0] = "a"
# p a
# a[10] = "b"
# p a
# ary = [0, 1, 2, 3, 4, 5]
# ary[0..2] = ["a", "b"]
# p ary
# ary = [0, 1, 2]
# ary[5..6] = "x"
# p ary
# ary = [0, 1, 2, 3, 4, 5]
# ary[1..3] = "x"
# p ary
# ary = [0, 1, 2, 3, 4, 5]
# ary[2..0] = ["a", "b", "c"]
# p ary
# ary = [0, 1, 2, 3, 4, 5]
# ary[2..4] = []
# p ary
# ary = [0, 1, 2, 3]
# ary[1, 2] = ["a", "b", "c", "d"]
# p ary
# ary = [0, 1, 2]
# ary[5, 1] = "Z"
# p ary
# ary = [0, 1, 2, 3]
# ary[1, 0] = ["inserted"]
# p ary
# a = [0, 1, 2, 3, 4, 5]
# a[2, 3] = []
# p a

#|
# p [1, 1, 4, 2, 3] | [5, 4, 5]

#all?
# p [5,  6, 7].all? {|v| v > 0 }
# p [5, -1, 7].all? {|v| v > 0 }
# p [].all? {|v| v > 0 }

#any?
# p [1, 2, 3].any? {|v| v > 3 }
# p [1, 2, 3].any? {|v| v > 1 }
# p [].any? {|v| v > 0 }

#append
# array = [1, 2, 3]
# array.append 4
# array.append [5, 6]
# array.append 7, 8
# p array

#assoc
# ary = [[1,15], [2,25], [3,35]]
# p ary.assoc(1)
# p ary.assoc(2)
# p ary.assoc(15)

#at
# ary = [1, 2, 3]
# p ary.at(0)
# p ary.at(1)
# p ary.at(-1)
# p ary.at(4)

#bsearch
# ary = [0, 4, 7, 10, 12]
# p ary.bsearch {|x| x >= 4}
# p ary.bsearch {|x| x >= 6}
# p ary.bsearch {|x| x >= -1}
# p ary.bsearch {|x| x >= 100}

#bsearch_index
# ary = [0, 4, 7, 10, 12]
# p ary.bsearch_index {|x| x >= 4}
# p ary.bsearch_index {|x| x >= 6}
# p ary.bsearch_index {|x| x >= -1}
# p ary.bsearch_index {|x| x >= 100}

#clear
# ary = [1, 2]
# ary.clear
# p ary

#clone
# ary = ['string']
# p ary
# copy = ary.clone
# p copy
# ary[0][0...3] = ''
# p ary
# p copy

#collect, collect!
# ary = [1, 2, 3]
# p ary.collect {|i| i * 2}
# p ary
# p ary.collect! {|i| i * 2}
# p ary

#combination
# a = [1, 2, 3, 4]
# p a.combination(1).to_a
# p a.combination(2).to_a
# p a.combination(3).to_a
# p a.combination(4).to_a
# p a.combination(0).to_a
# p a.combination(5).to_a 
# result = []
# a.combination(2) {|e| result << e}
# p result

#compact, compact!
# ary = [1, nil, 2, nil, 3, nil]
# p ary.compact
# p ary
# ary.compact!
# p ary
# p ary.compact!
# p ary

#concat
# array = [1, 2]
# a = [3, 4]
# array.concat a
# p array
# p a
# p ["a", "b" ].concat( ["c", "d"] )
# p [ "a" ].concat( ["b"], ["c", "d"] )
# p [ "a" ].concat

#count
# ary = [1, 2, 4, 2.0]
# p ary.count
# p ary.count(2)
# p ary.count{|x|x%2==0}

#cylce
# a = ["a", "b", "c"]
# a.cycle(5) {|x| puts x }

#delete
# array = [1, 2, 3, 2, 1]
# p array.delete(2)
# p array

#delete_at
# array = [0, 1, 2, 3, 4]
# array.delete_at 2
# p array

#delete_if
# p a = [0, 1, 2, 3, 4, 5]
# p a.delete_if{|x| x % 2 == 0}
# p a

#difference
# p [ 1, 1, 2, 2, 3, 3, 4, 5 ].difference([ 1, 2, 4 ])
# p [ 1, 'c', :s, 'yep' ].difference([ 1 ], [ 'a', 'c' ])
# a = [ 1, 1, 2, 2, 3, 3, 4, 5 ]
# p a.difference([ 1, 2, 4 ])
# p a

#dig
# a = [[1, [2, 3]]]
# p a.dig(0, 1, 1)
# p a.dig(1, 2, 3)
# p [42, {foo: :bar}].dig(1, :foo)

#drop
# a = [1, 2, 3, 4, 5, 0]
# p a.drop(3)
# p a

#drop_while
# a = [1, 2, 3, 4, 5, 0]
# p a.drop_while {|i| i < 3 }
# p a

#dup
# ary = ['string']
# p ary
# copy = ary.dup
# p copy
# ary[0][0...3] = ''
# p ary
# p copy

#each
# [1, 2, 3].each do |i|
#   puts i
# end

#each_index
# a = [1, 3, 5, 7, 9]
# a.each_index {|i| puts "This is index #{i}"}

#empty?
# p [1, 2, 3].empty?
# p [].empty?

#eql?
# p ["a", "b", "c"].eql?(["a", "b", "c"])
# p ["a", "b", "c"].eql?(["a", "c", "b"])
# p ["a", "b", 1].eql?(["a", "b", 1.0])

#fetch
# a = [1, 2, 3, 4, 5]
# begin
#   p a.fetch(10)
# rescue IndexError => err
#   puts err 
# end
# p a.fetch(10, 999)
# result = a.fetch(10){|nth|
#   print "#{nth} はありません。\n"
#   999
# }
# p result

#fill
# a = [0, 1, 2, 3, 4]
# a.fill(10)
# p a

#filter, filter!
# ary = [1, 2, 3, 4, 5]
# p ary.filter {|i| i % 2 == 0}
# p ary
# p ary.filter! {|i| i % 2 == 0}
# p ary

#find_index
# p [1, 0, 0, 1, 0].find_index(1)
# p [1, 0, 0, 0, 0].find_index(1)
# p [0, 1, 0, 1, 0].find_index {|v| v > 0}

#first
# p [1, 2, 3].first
# p [1, 2, 3].first(2)

#flatten, flatten!
# a = [1, [2, 3, [4], 5]]
# p a.flatten
# p a
# a = [[[1, [2, 3]]]]
# p a.flatten!
# p a

#hash
# a = ["a", "b", 1]
# p a.hash
# b = a.dup
# p b.hash

#include?
# a = [ "a", "b", "c" ]
# p a.include?("b")
# p a.include?("z")

#index
# p [1, 0, 0, 1, 0].index(1)
# p [1, 0, 0, 0, 0].index(1)
# p [0, 0, 0, 0, 0].index(1)
# p [0, 1, 0, 1, 0].index {|v| v > 0}

#insert
# ary = [1, 2, 3]
# ary.insert(2, "a", "b")
# p ary
# ary.insert(-2, "X")
# p ary

#inspect
# p [1, 2, 3, 4].inspect

#intersect?
# a = [ 1, 2, 3 ]
# b = [ 3, 4, 5 ]
# c = [ 5, 6, 7 ]
# p a.intersect?(b)
# p a.intersect?(c)

#intersection
# p [1, 1, 3, 5].intersection([3, 2, 1])
# p ["a", "b", "z"].intersection(["a", "b", "c"], ["b"])
# p ["a"].intersection                           

#join
# p [1, 2, 3].join('-')

#keep_if
# a = %w{ a b c d e f }
# p a.keep_if {|v| v =~ /[aeiou]/}
# p a

#last
# ary = [1, 2, 3]
# p ary.last
# p ary.last(2)
# p ary.last(4)

#length
# p [1, nil, 3, nil].length

#map, map!
# ary = [1, 2, 3]
# p ary.map {|n| n * 3 }
# p ary
# p ary.map! {|n| n * 3 }
# p ary

#max
# p [].max
# p [].max(1)
# p [2, 5, 3].max
# p [2, 5, 3].max(2)
# ary = %w(albatross dog horse)
# p ary.max {|a, b| a.length <=> b.length }

#min
# p [].min
# p [].min(1)
# p [2, 5, 3].min
# p [2, 5, 3].min(2)
# ary = %w(albatross dog horse)
# p ary.min {|a, b| a.length <=> b.length }

#minmax
# a = %w(albatross dog horse)
# p a.minmax
# p a.minmax{|a,b| a.length <=> b.length }

#none?
# p %w{ant bear cat}.none? {|word| word.length == 5}
# p %w{ant bear cat}.none? {|word| word.length >= 4}
# p %w{ant bear cat}.none?(/d/)
# p [nil, false, true].none?

#one?
# p %w{ant bear cat}.one? {|word| word.length == 4}
# p %w{ant bear cat}.one? {|word| word.length > 4}
# p %w{ant bear cat}.one?(/t/)
# p [ nil, true, 99 ].one?(Integer)

#pack
# p ['!'].pack('@1a', buffer: 'abc')

#permutation
# a = [1, 2, 3]
# p a.permutation.to_a
# p a.permutation(1).to_a
# p a.permutation(2).to_a
# result = []
# a.permutation(2) {|e| result << e}
# p result

#pop
# array = [1, 5, 6, [2, 3], 4]
# p array.pop 
# p array.pop
# p array.pop
# p array.pop(2)
# p array

#prepend
# arr = [1,2,3]
# arr.prepend 0
# p arr 
# arr.prepend [0]
# p arr 
# arr.prepend 1, 2
# p arr    

#product
# p [1, 2, 3].product([4, 5]) 
# p [1, 2].product([3, 4], [5, 6])

#push
# array = [1, 2, 3]
# array.push 4
# array.push [5, 6]
# array.push 7, 8
# p array

#rassoc
# a = [[15,1], [25,2], [35,3]]
# p a.rassoc(2)

#reject, reject!
# ary = [1, 2, 3, 4, 5]
# p ary.reject {|i| i % 2 == 0}
# p ary
# p ary.reject! {|i| i % 2 == 0}
# p ary

#repeated_combination
# a = [1, 2, 3]
# p a.repeated_combination(1).to_a
# p a.repeated_combination(2).to_a
# p a.repeated_combination(3).to_a
# result = []
# a.repeated_combination(3) {|e| result << e}
# p result

#repeated_permutation
# a = [1, 2]
# p a.repeated_permutation(1).to_a
# p a.repeated_permutation(2).to_a 
# result = []
# a.repeated_permutation(3) {|e| result << e}
# p result

#replace
# a = [1, 2, 3]
# a.replace [4, 5, 6]
# p a

#reverse, reverse!
# a = ["a", 2, true]
# p a.reverse
# p a
# p a.reverse!
# p a

#reverse_each
# a = [ "a", "b", "c" ]
# a.reverse_each {|x| p x }

#rindex
# p [1, 0, 0, 1, 0].rindex(1)
# p [1, 0, 0, 0, 0].rindex(1)
# p [0, 0, 0, 0, 0].rindex(1)
# p [0, 1, 0, 1, 0].rindex {|v| v > 0}

#rotate, rotate!
# a = [ "a", "b", "c", "d" ]
# p a.rotate
# p a.rotate(2)
# p a.rotate(-1)
# p a
# p a.rotate!
# p a

#sample
# a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# p a.sample
# p a.sample(5)
# p a

#select, select!
# ary = [1, 2, 3, 4, 5]
# p ary.select { |num| num.even? }
# p ary
# p ary.select! { |num| num.even? }
# p ary

#shift
# ary = [1, 2, 3, 4, 5]
# p ary.shift
# p ary
# p ary.shift(2)
# p ary

#shuffle, shuffle!
# ary = [1, 2, 3, 4, 5]
# p ary.shuffle
# p ary
# p ary.shuffle!
# p ary

#size
# p [1, nil, 3, nil].size

#slice, slice!
# p [0, 1, 2].slice(1)
# p [0, 1, 2].slice(4)
# p [0, 1, 2].slice(1, 2)
# ary = [0, 1, 2, 3, 4, 5]
# p ary.slice(2, 3)
# p ary
# p ary.slice!(2, 3)
# p ary

#sort, sort!
# a = [ "d", "a", "e", "c", "b" ]
# p a.sort
# p a
# p a.sort!
# p a

#sort_by, sort_by!
# fruits = %w{apple pear fig}
# p fruits.sort_by { |word| word.length }
# p fruits
# p fruits.sort_by! { |word| word.length }
# p fruits

#sum
# p [].sum
# p [].sum(0.0)
# p [1, 2, 3].sum
# p [3, 5.5].sum
# p [2.5, 3.0].sum(0.0) {|e| e * e }
# p ["a", "b", "c"].sum("")

#take
# a = [1, 2, 3, 4, 5, 0]
# p a.take(3)
# p a

#take_while
# a = [1, 2, 3, 4, 5, 0]
# p a.take_while {|i| i < 3 }
# p a

#to_a
# class SubArray < Array; 
# end
# ary1 = Array([1, 2, 3, 4])
# ary2 = SubArray.new([1, 2, 3, 4])
# p ary1.to_a
# p ary1.to_a.class
# p ary2.to_a
# p ary2.to_a.class

#to_ary
# class SubArray < Array;
# end
# ary1 = Array([1, 2, 3, 4])
# ary2 = SubArray.new([1, 2, 3, 4])
# p ary1.to_ary
# p ary1.to_ary.class
# p ary2.to_ary
# p ary2.to_ary.class

#to_h
# p [[:foo, :bar], [1, 2]].to_h

#transpose
# p [[1,2],
#    [3,4],
#    [5,6]].transpose

#union
# p ["a"].union(["e", "b"], ["a", "c", "b"])

#uniq, uniq!
# ary = [1, 2, 2, 3, 3, 4, 5]
# p ary.uniq
# p ary
# p ary.uniq!
# p ary

#unshift
# arr = [1,2,3]
# arr.unshift 0
# p arr
# arr.unshift [0]
# p arr
# arr.unshift 1, 2
# p arr          

#values_at
# ary = %w( a b c d e )
# p ary.values_at(1, 3, 5)
# p ary.values_at(-1, -2, -2, -7)
# p ary.values_at(1..9)

#zip
# p [1,2,3].zip([4,5,6], [7,8,9])
# p [1,2].zip([:a,:b,:c], [:A,:B,:C,:D])
# p [1,2,3,4,5].zip([:a,:b,:c], [:A,:B,:C,:D])
# [1,2,3].zip([4,5,6], [7,8,9]) { |ary| p ary }