#!/usr/bin/ruby

password = "ruby mola"

answer = gets.chomp

if password === answer
	puts "ACCESO PERMITIDO."
else
	puts "ACCESO DENEGADO."
end
