#!/usr/bin/ruby

file = File.open("text.txt")
file_data = file.read
file.close
puts file_data