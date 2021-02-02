#!/usr/bin/ruby

puts "Introduzca un primer número: "
first = gets.to_i
puts "Introduzca un segundo número: "
second = gets.to_i
result = first * second
if result < 0
	puts "El resultado es negativo"
elsif result === 0
	puts "El resultado es positivo y negativo"
else
	puts "El resultado es positivo"
end
puts "#{first} x #{second} = #{result}"