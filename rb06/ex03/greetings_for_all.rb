#!/usr/bin/ruby

def greetings str = nil
	if str == nil
		puts "Hello, noble desconocida."
	elsif str.is_a? String
		puts "Hello, #{str}"
	else
		puts "¡Error! No es un nombre."
	end
end
greetings('Lucía')
greetings()
greetings(22)