#!/usr/bin/ruby

num = rand(100)
difficulty = 4
#puts num
print "Introduzca un número: "
input = gets.to_i
while difficulty > 1
	difficulty -= 1
	if input < 0 or input > 100
		puts "Ese número no esta comprendido entre 0 y 100"
	elsif input == num
		break
	elsif input > num
		puts "- número de intentos pendientes: #{difficulty}"
	else
		puts "+ número de intentos pendientes: #{difficulty}"
	end
	print "Introduzca un número: "
	input = gets.to_i
end
if input == num
	puts "¡Lo ha encontrado!"
else
	puts "¡Ha perdido! El número era #{num}!"
end