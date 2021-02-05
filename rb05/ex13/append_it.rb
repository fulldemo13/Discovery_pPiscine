#!/usr/bin/ruby

if ARGV.length == 0
	puts "none"
else
	ARGV.each do |str|
		if !str.match(/ismo\z/)
			puts str[0...str.length - 1] + "ismo"
		end
	end
end