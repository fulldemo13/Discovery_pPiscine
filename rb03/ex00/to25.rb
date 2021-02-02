#!/usr/bin/ruby
puts "Introduzca un número superior a 25"
number = gets.to_i
if number > 25
	puts "Error."
else
	while number <= 25
		puts "En el bucle, mi variable es igual a #{number}."
		number += 1
	end
end
