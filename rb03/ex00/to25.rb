#!/usr/bin/ruby
puts "Please enter a number less than 25."
number = gets.to_i
if number > 25
	puts "Error."
else
	while number <= 25
		puts "In the loop, my variable is #{number}."
		number += 1
	end
end
