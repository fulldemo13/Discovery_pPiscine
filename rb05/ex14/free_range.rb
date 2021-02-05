#!/usr/bin/ruby

if ARGV.length != 2
	puts "none"
else
	array = (ARGV[0].to_i..ARGV[1].to_i).to_a
	if array.length == 0
		puts "none"
	else
		p array
	end
end