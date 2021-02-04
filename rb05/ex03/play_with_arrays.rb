#!/usr/bin/ruby

array = [2, 8, 9, 48, 8, 22, -12, 2]
res = []
array.each {|i| i > 5 ? res.push(i + 2) : 0}
p array, res.uniq