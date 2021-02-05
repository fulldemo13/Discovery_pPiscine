#!/usr/bin/ruby

def downcase_it str
	str.downcase
end

if ARGV.length == 0
	puts "none"
else
	ARGV.each {|str| puts downcase_it(str)}
end