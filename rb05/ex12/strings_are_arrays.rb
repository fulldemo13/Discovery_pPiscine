#!/usr/bin/ruby

res = ""
if ARGV.length != 1
	puts "none"
else
	ARGV[0].downcase.chars.each do |c|
		if c == "z"
			res += "z"
		end
	end
	if res.length == 0
		puts "none"
	else
		puts res
	end
end