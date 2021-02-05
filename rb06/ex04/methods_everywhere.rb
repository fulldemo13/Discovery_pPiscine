#!/usr/bin/ruby

def reduce str
	str[0,8]
end

def agranda str
	while str.length < 8
		str << "Z"
	end
	str
end

if ARGV.length == 0
	puts "none"
else
	ARGV.each do |str|
		str = str.dup
		if str.length == 8
			puts str
		elsif str.length > 8
			puts reduce(str)
		else
			puts agranda(str)
		end
	end
end