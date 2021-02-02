#!/usr/bin/ruby

print "Introduzca un número: "
input = gets.to_f
int = input.to_i

if input - int == 0.0
	puts "El número introducido es entero"
else
	puts "El número introducido es decimal"
end