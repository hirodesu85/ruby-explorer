# 特異メソッド

#[]
# h = {1 => "value"}
# h.default = "none"
# g = Hash[h]
# p g
# p h[:no]
# p g[:no]
# h[:add] = "some"
# p h
# p g
# h[1] << "plus"
# p h
# p g
# ary = [1,"a", 2,"b", 3,["c"]]
# p Hash[*ary]
# alist = [[1,"a"], [2,"b"], [3,["c"]]]
# p alist.flatten(1)
# p Hash[*alist.flatten(1)]
# keys = [1, 2, 3]
# vals = ["a", "b", ["c"]]
# alist = keys.zip(vals)
# p alist
# p Hash[alist]
# lis = [[1,["a"]], [2,["b"]], [3,["c"]], [[4,5], ["a", "b"]]]
# p lis
# p hash = Hash[lis]

#new
# h = Hash.new([])
# h[0] << 0
# h[1] << 1
# p h.default
# h = Hash.new {|hash, key| hash[key] = "foo"}
# p h[1]
# p h[1].object_id
# p h[1] << "bar"
# p h[1]
# p h[2]
# p h[2].object_id
# p h