#!/usr/bin/ruby

if ARGV.length == 0
	puts "none"
else
	puts "parametros #{ARGV.length}"
	ARGV.each {|i| print i, ": #{i.length}\n"}
end