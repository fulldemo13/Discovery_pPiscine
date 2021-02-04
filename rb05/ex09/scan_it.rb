#!/usr/bin/ruby

if ARGV.length != 2
	puts "none"
else
	puts ARGV[1].scan(ARGV[0]).length
end