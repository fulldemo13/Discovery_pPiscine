#!/usr/bin/ruby

if ARGV.length != 1
	puts "none"
else
	ARGV[0].chars.each do |c|
		if c == "z"
			print "z"
		end
	end
	print "\n"
end