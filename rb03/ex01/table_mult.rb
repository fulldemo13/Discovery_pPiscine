#!/usr/bin/ruby
puts "Please enter a number"
number = gets.to_i
i = 0;
if number > 10
	puts "Error."
else
	while i <= 10
		result = i * number
		puts "#{i} x #{number} = #{result}"
		i += 1
	end
end
