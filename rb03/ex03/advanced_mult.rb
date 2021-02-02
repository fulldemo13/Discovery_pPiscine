#!/usr/bin/ruby

if ARGV.length === 0
	i = 0;
	while i <= 10
		print "Tabla de #{i}:"
		j = 0
		while j <= 10
			result = i * j
			print " #{result} "
			j += 1
		end
		print "\n"
		i += 1
	end
else
	puts "none"
end
