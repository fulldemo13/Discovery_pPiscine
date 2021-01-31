#!/usr/bin/ruby

puts "Insert first number:"
first = gets.to_i
puts "Insert second number: "
second = gets.to_i
result = first * second
puts "#{first} x #{second} = #{result}"

if result < 0
	puts "The result is negative."
elsif result === 0
	puts "The result is positive and negative."
else
	puts "The result is positive."
end
