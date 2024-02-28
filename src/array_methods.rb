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
p [1, 1, 4, 2, 3] | [5, 4, 5]