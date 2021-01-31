#!/usr/bin/ruby

password = "Ruby rules"

answer = gets.chomp

if password === answer
	puts "ACCES GRANTED."
else
	puts "ACCES DENIED."
end
