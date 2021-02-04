#!/usr/bin/ruby

if ARGV.length != 1
	puts "none"
else
	print "Cuál era el parámetro? "
	words = $stdin.gets.chomp
	if	words == ARGV[0]
		puts "¡Sí Señor!"
	else
		puts "No, se siente..."
	end
end